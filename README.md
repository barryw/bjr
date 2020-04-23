      ____      _ ____
     | __ )    | |  _ \
     |  _ \ _  | | |_) |
     | |_) | |_| |  _ <
     |____/ \___/|_| \_\

      Barry's Job Runner

#### Introduction


#### Configuration

`JWT_EXPIRY_SECONDS` : Set to the number of seconds that a JWT should live. The default is 3600 seconds.


#### Running

There are several ways of running BJR. Some of them are suitable for a small dev environment, while others require Kubernetes, Packer and Terraform.

##### Local dev with Foreman

You can get started quickly by using `foreman` which allows you spin up almost everything you need for a full, small installation. You will need to install Redis and MySQL (or run it in a Docker container with port 3306 exposed) and set up a `bjr` user. Defaults for the database connection are in the `config/database.yml`

If you don't have `foreman` installed, you can install it with Homebrew by executing `brew install foreman`

Start it with `foreman start`

It will run a single API server listening on :3000, a single worker and a Redis server. Once it's up, you can connect to it at `http://localhost:3000`

##### Local dev with docker-compose



##### Packer & Terraform


##### Kubernetes



#### Building Docker images



#### SDKs

The BJR API server has a Swagger UI available at `/api-docs` which you can use to interact with BJR. The `swagger.yaml` lives in `swagger/v1` and can be used to generate SDKs for several languages using Swagger codegen.

In order to generate the SDKs, you will need to be running `docker`. To generate them, run

```bash
rake generate:sdks
```

The SDKs will be generated in subfolders of the `sdks` directory. Each language contains documentation on how to use the SDK.

#### Interacting with BJR using curl

You can also use `curl` to directly interact with your BJR API server. The API server communicates using REST.

All endpoints with the exception of `authenticate` require an authentication token. The token's lifetime is determined by the value of the environment variable `JWT_EXPIRY_SECONDS` defined on the API server.

With a fresh install of BJR running on localhost (this can be done by executing `foreman start` from the project root directory), get an authentication token with

```bash
curl -H "Content-type: application/json" -H "Accept: application/json" http://localhost:3000/authenticate -d '{"username": "admin", "password": "password1234"}'
```

You'll receive a message like this:

```json
{"auth_token":"eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1ODc2NjI5ODJ9.EUt2SHLC7-sg3Sn_5ciTNYL4hj0kh8CpLP2Fl_EMiDk","message":"","is_error":false,"status_code":200}
```

Grab the value of `auth_token`. This is what you'll pass to subsequent requests, and will expire after an hour by default.

Let's create a simple job that just echos "Hello World" to STDOUT

```bash
curl -X POST -H "Authorization: eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1ODc2NjI5ODJ9.EUt2SHLC7-sg3Sn_5ciTNYL4hj0kh8CpLP2Fl_EMiDk" -H "Content-type: application/json" -H "Accept: application/json" http://localhost:3000/job_api -d '{"name": "My First Job", "command": "echo Hello World", "cron": "* * * * *"}'
```

```json
{"message":"Job 27 created successfully.","is_error":false,"object":{"id":27,"name":"My First Job","cron":"* * * * *","enabled":true,"command":"echo Hello World","next_run":"2020-04-23T16:33:00.000Z","running":false,"created_at":"2020-04-23T16:32:47.000Z","updated_at":"2020-04-23T16:32:47.000Z","timezone":"UTC","tags":[],"success_callback":null,"failure_callback":null},"object_type":"job","status_code":201}
```

The `cron` expression says to run this every minute. After a minute or so, let's see how it's doing. You'll need to make sure to specify the same job id that you received back. It will most likely be different from this example:

```bash
curl -X GET -H "Authorization: eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1ODc2NjI5ODJ9.EUt2SHLC7-sg3Sn_5ciTNYL4hj0kh8CpLP2Fl_EMiDk" -H "Content-type: application/json" -H "Accept: application/json" http://localhost:3000/job_api/27/runs
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
