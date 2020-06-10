      ____      _ ____
     | __ )    | |  _ \
     |  _ \ _  | | |_) |
     | |_) | |_| |  _ <
     |____/ \___/|_| \_\

      Barry's Job Runner


[![Actions Status](https://github.com/barryw/bjr/workflows/Ruby/badge.svg)](https://github.com/barryw/bjr/workflows/Ruby/badge.svg) [![codecov](https://codecov.io/gh/barryw/bjr/branch/master/graph/badge.svg)](https://codecov.io/gh/barryw/bjr) [![Maintainability](https://api.codeclimate.com/v1/badges/0c796a2aad42607c6e93/maintainability)](https://codeclimate.com/github/barryw/bjr/maintainability)

#### Introduction

This is service with a very simple use case:

A job server that can execute bash commands/scripts with a REST API frontend that allows you to manage the schedule of those jobs.

That's it in a nutshell.

It's a bit more than that, but this is what I set out to build because I was unable to find something that satisfied this use case. There are tools like Quartz, but that's just a very robust scheduler. It doesn't have a nice REST API frontend.

This comes in essentially 2 pieces:

- One or more worker nodes that execute the jobs. These run a tool called Sidekiq, which is a great Job runner.
- One or more API server nodes running a stripped down Rails API application. This is how you interact with BJR.

The job data is stored in a MySQL database, and state is managed in Redis. Every minute a job is executed to find "schedulable" jobs, which are jobs with a "next run" date that's earlier than the current date. For every job that's found that matches this, a "shell job" is created to execute the job. Both of these jobs are run by Sidekiq.

You can add tags to your jobs so that you can search on them. You can also add success and failure callback URLs so that you can be notified when jobs succeed and fail. These callbacks will be called with a POST and sent information about the job run.

I also set out to make it very cloud & Kubernetes friendly. There are deployment options for Kubernetes using Helm, a Packer build to generate AMIs and Terraform code to deploy those AMIs into a working deployment.

#### Configuration

If you're just running a development environment, the defaults are probably fine. For everything else, here's what you'll want to configure:

`RAILS_ENV`: The Rails environment to run in. For development/test instances, use `development`. For production, use `production`. Defaults to development

`JWT_EXPIRY_SECONDS` : Set to the number of seconds that a JWT should live. The default is 3600 seconds. Once expired, you'll need to reauthenticate to get a new JWT.

`REDIS_HOST`: The Redis host to connect to. This will default to localhost. Your API server nodes and worker nodes must see the same Redis server.\
`REDIS_PORT`: The Redis port to connect to. This will default to 6379. Your API server nodes and worker nodes must see the same Redis server.\
`REDIS_SIDEKIQ_DB`: The Redis database to use for Sidekiq. Defaults to 0.

`BJR_DATABASE_USERNAME`: The username for the BJR MySQL database. Defaults to bjr\
`BJR_DATABASE_PASSWORD`: The password for the BJR MySQL database. Defaults to bjr\
`BJR_DATABASE_HOST`: The hostname to connect to the BJR MySQL database at. Defaults to 127.0.0.1\
`BJR_DATABASE_PORT`: The port to connect to the BJR MySQL database at. Defaults to 3306\
`BJR_DATABASE`: The name of the database to use for BJR data. Defaults to `bjr_{RAILS_ENV}`

`WEB_CONCURRENCY`: Puma will run in clustered mode by default. This is the number of web workers. Defaults to 2\
`PORT`: The port that Puma will listen on. Defaults to 3000


#### Running

There are several ways of running BJR. Some of them are suitable for a small dev environment, while others require Kubernetes, Packer and Terraform.

##### Local dev with Foreman

You can get started quickly by using `foreman` which allows you spin up almost everything you need for a full, small installation. You will need to install Redis and MySQL (or run it in a Docker container with port 3306 exposed) and set up a `bjr` user. Defaults for the database connection are in the `config/database.yml`

If you don't have `foreman` installed, you can install it with Homebrew by executing `brew install foreman`

Start it with `foreman start`

It will run a single API server listening on :4000, a single worker and a Redis server. Once it's up, you can connect to it at `http://localhost:4000`

##### Local dev with docker-compose

If Docker is more your thing, there's a `docker-compose.yml` file supplied which will bring up everything needed for a development environment, including MySQL and Redis.

Bring it up with `docker-compose up`

When you're done, you can hit ctrl-c or run `docker-compose down`. If you'd like to reset the MySQL data volume, use `docker-compose down -v`

##### Packer & Terraform

Included are Packer and Terraform scripts to build BJR AMIs and deploy them. The code to build the AMIs are in the `packer` directory. There's a README in there that describes the different AMIs that can be built and how to use them.

Once you've built an API and worker AMI, you can then deploy them with the Terraform code in `terraform`. This will build EC2 instances running docker-compose and is a bit complicated. Read the README file in that directory to see how to deploy it.

##### Kubernetes

If you're looking to deploy this to Kubernetes (that's where I do my testing, btw), then you're in luck. There's a Helm chart in `deploy` that will allow you to do a quick-and-dirty deploy of everything you need, including MySQL and Redis. Right now it's using Helm 2 with Tiller, but I plan to migrate to Helm 3.

First, make sure you have Helm 2 installed (2.16) and then 'cd' to the `deploy` directory.

The BJR Helm Chart is driven from values in the `values.yaml` file. For a dev environment deployment, you can just accept the defaults, but in a production deployment you'd definitely want to tune these settings.

If this is your first time, install Tiller with

```bash
make init
```

To deploy, make sure your kube config is set properly and that you're using the correct kube context

```bash
make deploy
```

Open your Kubernetes dashboard and watch as your BJR deployment comes up. You should see a Redis pod, a MySQL pod, 2 API pods and 2 worker pods. It's normal for the API pods to take a while to go green.

Once everything is green, you'll need to expose your `bjr-api` service so that you can view your Swagger UI. This will vary depending on your environment, but I use microk8s with MetalLB so that I can expose the API service on an IP that I can open with a browser. By default the `bjr-api` service is running with a type of `LoadBalancer`, but you can change it to whatever you need.

To tear down your BJR installation

```bash
make undeploy
```

#### Building Docker images

TODO

#### Walkthru

The first time you start the BJR API server, it will create 2 users, 3 jobs and 5 folders. Each user will have the initial password of `password1234`, so it is strongly recommended that it be changed, and each user should have a different password. The 2 initial users are `root` and `admin`.

The `root` user is meant to perform administrative tasks such as managing regular users and managing the job workers.

The `admin` user is an initial regular user and can be removed by signing in as the `root` user and deleting it. It is only meant to be used to get started.

Each user has their own set of jobs. When they log in, they can only see and manage their own jobs.

#### Job search expressions

When you call the `GET /job_api` endpoint to fetch jobs, you can also pass in an `expression` parameter. This will allow you to filter jobs on a set of criteria. The following are valid ways of searching for jobs:

- `name:my_job` will search for jobs with `my_job` in the name. This does a database LIKE search using `%my_job%` as the expression.
- `tag:tag1,tag2` or `tag:|tag1,tag2` will search for jobs tagged with either `tag1` or `tag2`
- `tag:&tag1,tag2` will search for jobs tagged with both `tag1` and `tag2`. If the jobs have other tags, this will NOT match them! The jobs must only have `tag1` and `tag2`.
- `tag:!tag3,tag4` will search for jobs that are not tagged with `tag3` or `tag4`
- `running` / `stopped` will search for jobs that are currently running or stopped
- `enabled` / `disabled` will search for jobs that are currently enabled or disabled
- `command:sleep` / `cmd:curl` search for jobs with a specific command


You can also combine search criteria: `tag:&tag1,tag2 running` would find running jobs tagged with both tag1 and tag2.

__NOTE__: There can be no space between the search operand and the search term (eg. `tag: tag1`) and spaces separate search criteria, so currently you can't have spaces in your search terms!

#### Smart Folders

The API server has a set of endpoints for managing `Smart Folders` which are configured with a search expression. For example, you can create a folder containing running jobs and when you call the `GET /folder_api/:id/jobs` REST method, it will return jobs that are currently running.

Folders use the same expression syntax defined in `Job search expressions` above.


#### React Frontend

There's a React-based frontend for BJR here: https://github.com/barryw/bjr_web

#### SDKs

The BJR API server has a Swagger UI available at `/api-docs` which you can use to interact with BJR. The `swagger.yaml` lives in `swagger/v1` and can be used to generate SDKs for several languages using OpenAPI codegen.

__NOTE__: If you change the functionality of the API server, make sure you run `rake rswag` before generating the SDKs since the SDKs are generated from the swagger.yaml.

In order to generate the SDKs, you will need to be running `docker`. To generate them, run

```bash
rake sdk:generate
```

The SDKs will be generated in subfolders of the `sdks` directory. Each language contains documentation on how to use the SDK.

Currently, the SDKs are generated for the following languages:

- C#
- Go
- Python
- Java
- Javascript
- Ruby
- Rust

#### Interacting with BJR using curl

You can also use `curl` to directly interact with your BJR API server. The API server communicates using REST.

All endpoints with the exception of `authenticate` require an authentication token. The token's lifetime is determined by the value of the environment variable `JWT_EXPIRY_SECONDS` defined on the API server.

With a fresh install of BJR running on localhost (this can be done by executing `foreman start` from the project root directory), get an authentication token with

```bash
curl -H "Content-type: application/json" -H "Accept: application/json" http://localhost:4000/authenticate -d '{"username": "admin", "password": "password1234"}'
```

You'll receive a message like this:

```json
{"auth_token":"eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1ODc2NjI5ODJ9.EUt2SHLC7-sg3Sn_5ciTNYL4hj0kh8CpLP2Fl_EMiDk","message":"","is_error":false,"status_code":200}
```

Grab the value of `auth_token`. This is what you'll pass to subsequent requests, and will expire after an hour by default.

Let's create a simple job that just echos "Hello World" to STDOUT

```bash
curl -X POST -H "Authorization: eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1ODc2NjI5ODJ9.EUt2SHLC7-sg3Sn_5ciTNYL4hj0kh8CpLP2Fl_EMiDk" -H "Content-type: application/json" -H "Accept: application/json" http://localhost:4000/job_api -d '{"name": "My First Job", "command": "echo Hello World", "cron": "* * * * *"}'
```

```json
{"message":"Job 27 created successfully.","is_error":false,"object":{"id":27,"name":"My First Job","cron":"* * * * *","enabled":true,"command":"echo Hello World","next_run":"2020-04-23T16:33:00.000Z","running":false,"created_at":"2020-04-23T16:32:47.000Z","updated_at":"2020-04-23T16:32:47.000Z","timezone":"UTC","tags":[],"success_callback":null,"failure_callback":null},"object_type":"job","status_code":201}
```

The `cron` expression says to run this every minute. After a minute or so, let's see how it's doing. You'll need to make sure to specify the same job id that you received back. It will most likely be different from this example:

```bash
curl -X GET -H "Authorization: eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1ODc2NjI5ODJ9.EUt2SHLC7-sg3Sn_5ciTNYL4hj0kh8CpLP2Fl_EMiDk" -H "Content-type: application/json" -H "Accept: application/json" http://localhost:4000/job_api/27/runs
```

```json
{"message":"Job runs received successfully.","is_error":false,"object":[{"id":457,"success":true,"return_code":0,"error_message":"","stdout":"Hello World\n","stderr":"","start_time":"2020-04-23T16:33:11.000Z","end_time":"2020-04-23T16:33:11.000Z","job_id":27,"created_at":"2020-04-23T16:33:11.000Z","updated_at":"2020-04-23T16:33:11.000Z"},{"id":459,"success":true,"return_code":0,"error_message":"","stdout":"Hello World\n","stderr":"","start_time":"2020-04-23T16:34:01.000Z","end_time":"2020-04-23T16:34:01.000Z","job_id":27,"created_at":"2020-04-23T16:34:01.000Z","updated_at":"2020-04-23T16:34:01.000Z"},{"id":461,"success":true,"return_code":0,"error_message":"","stdout":"Hello World\n","stderr":"","start_time":"2020-04-23T16:35:24.000Z","end_time":"2020-04-23T16:35:25.000Z","job_id":27,"created_at":"2020-04-23T16:35:24.000Z","updated_at":"2020-04-23T16:35:25.000Z"},{"id":463,"success":true,"return_code":0,"error_message":"","stdout":"Hello World\n","stderr":"","start_time":"2020-04-23T16:36:10.000Z","end_time":"2020-04-23T16:36:10.000Z","job_id":27,"created_at":"2020-04-23T16:36:10.000Z","updated_at":"2020-04-23T16:36:10.000Z"}],"object_type":"jobruns","status_code":200}
```

You can see that it's run a few times and is sending back information about each time it's run. Fortunately, the BJR API server supports paging, so even with thousands or millions of runs, you can narrow down the list to just what you need.

The call to `runs` supports the following extra parameters:

`start_date`: Only show runs that executed after this date
`end_date`: Only show runs that executed before this date
`succeeded`: Set to `true` if you'd only like to see runs that succeeded, or `false` to see jobs that failed.
`page`: By default, pages will be returned in batches of 25 runs. You can specify the page number with this parameter.

If there are multiple pages, the response header will contain a `Link` attribute that gives you links to the previous page and the next page:

```bash
Link: <http://localhost:3000/job_api/27/runs?page=1>; rel="first", <http://localhost:3000/job_api/27/runs?page=1>; rel="prev"
```

If you'd like to see what API routes are availble, run `rails routes`
