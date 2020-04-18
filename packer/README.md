      ____      _ ____
     | __ )    | |  _ \
     |  _ \ _  | | |_) |
     | |_) | |_| |  _ <
     |____/ \___/|_| \_\

      Barry's Job Runner
      Packer AMI Builder


#### Introduction

From here you can build one of three different types of AWS AMIs:

- BJR-ALL-IN-ONE: A single AMI that runs MySQL, Redis, the BJR API server and a single BJR worker. This is great for small, self-contained deployments, dev environments or proof-of-concept environments. Since this is not highly available or backed up, __DO NOT use this for production__.

- BJR-API: Builds an AMI that can be used as an API server node. Requires configuration for external MySQL & Redis.

- BJR-WORKER: Builds an AMI that can be used as a worker node. Requires configuration for external MySQL & Redis.

__NOTE__: Before you run any of these builds, please make sure to have `AWS_REGION` and `AWS_PROFILE` set in your environment to point at the AWS account that you'd like to build your AMI in. Your `AWS_PROFILE` should be the name of a profile stored in `~/.aws/credentials`

For a production architecture, you'll want to build and deploy at least 2 of the BJR-API servers and 2 of the BJR-WORKER servers. When deployed, they will each be configured to see the same MySQL database and same Redis server. It is recommended to use Aurora RDS for MySQL and Elasticache Redis in AWS for this.

#### Requirements

The artifacts generated here require the use of Hashicorp's Packer, which can be downloaded here: https://www.packer.io/downloads.html

If you intend to use the Terraform code in this repository to deploy your BJR installation, then you will also need Hashicorp's Terraform, which can be downloaded here: https://www.terraform.io/downloads.html

##### BJR-ALL-IN-ONE

If you just need a small, single-instance deployment, you can use the AMI generated from this.

You can build it with:

```bash
make all-in-one
```

When you launch this AMI in AWS, it will automatically start MySQL, Redis, the BJR API server and a single BJR worker process. The API server will be listening on port 3000. You'll be able to bring up the BJR API's Swagger page by navigating to the server's public IP on port 3000. You can also bring up an instance on a private subnet if you don't require the BJR server to be publicly visible.

It is recommended to put an ALB in front of your EC2 instance and attach an ACM SSL certificate to encrypt traffic to/from your BJR API.

Once you launch the server, docker-compose will be used to bring up everything needed running inside of Docker. You can start and stop the server by SSHing into it and executing

```bash
sudo service bjr stop
```

```bash
sudo service bjr start
```

You can also view the service logs with

```bash
sudo journalctl -u bjr
```

You can connect your BJR client SDKs and CLI at your instance's public IP on port 3000 to communicate with the API server.

##### BJR-API

If you're building more complex infrastructure, or you're building out a production environment, use this to build an AMI usable as a BJR API server. These will be the nodes that your client SDKs and CLI will talk to.

If you build this AMI, you must also build a worker AMI since the API server does not run jobs.

You can build it with:

```bash
make api
```

The resulting AMI will be tagged as follows:

```
Name: bjr-api-{yyyymmddHHMM}
Service: bjr-api
Version: v1
```

These tags will be used by code in the `terraform` deployment to find the correct AMIs.

##### BJR-WORKER

If you've built the BJR-API AMI, then you will also need to build and deploy at least one worker AMI. The worker nodes are where the jobs actually run.

You can build it with:

```bash
make worker
```

The resulting AMI will be tagged as follows:

```
Name: bjr-worker-{yyyymmddHHMM}
Service: bjr-worker
Version: v1
```


