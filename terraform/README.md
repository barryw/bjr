      ____      _ ____
     | __ )    | |  _ \
     |  _ \ _  | | |_) |
     | |_) | |_| |  _ <
     |____/ \___/|_| \_\

      Barry's Job Runner
    Terraform BJR Deployer

#### Introduction

This code will use Hashicorp's Terraform to deploy a BJR server into AWS. It will create the following resources:

- BJR API Autoscaling Group
- BJR API ALB
- BJR Worker Autoscaling Group
- Elasticache Redis instance
- RDS MySQL instance

This WILL incur cost, so please be aware before you run it!

You will need to have `terraform` and `make` installed to use this code.

__NOTE__: Before you can deploy using Terraform, you must first create the AWS AMIs found in the `packer` subdirectory! You will need to have a `BJR-API` AMI and a `BJR-WORKER` AMI before you can run this Terraform code.

This will serve as a good starting poing for a production deployment of BJR, but can be configured as needed.

__NOTE__: This Terraform code will store its state in this folder and is NOT suitable for a production deployment! Production deployments with Terraform would store their state in durable, shared storage (S3), and implement locking using DynamoDB.

#### Configuration

All configuration for this code is done in `deployment.tfvars`. You will need to configure the following variables in this file:

`vpc_id`: The id of the VPC that you'd like to deploy this infrastructure in. REQUIRED
`domain`: The route53 domain to use for creating the `bjr` record. You'll be able to navigate to your BJR deployment at `https://bjr.{domain}`. REQUIRED
`key_pair`: The key pair to use to allow SSH access into the instances. REQUIRED
`alb_subnet_ids`: A comma-separated list of subnet ids to use for the ALB. If you'd like your BJR deployment to be public, these should be public subnets (connected to IGW). REQUIRED
`subnet_ids`: A comma-separated list of subnet ids to use for the API servers, the workers, Redis and MySQL. These should NOT be public subnets! (they should use NAT GW). REQUIRED
`api_instance_type`: Instance type for the API instances. Defaults to m5.large
`worker_instance_type`: Instance type for the worker instances. Defaults to m5.xlarge
`rds_instance_type`: Instance type for the MySQL RDS instance. Defaults to db.m5.xlarge
`redis_instance_type`: Instance type for the Redis Elasticache instance. Defaults to cache.m5.large
`api_asg_min`: The minimum number of API nodes. Defaults to 2. In an HA deployment, should be >= 2.
`api_asg_max`: The maximum number of API nodes. Defaults to 2.
`api_asg_desired`: The desired number of API nodes. Defaults to 2.
`worker_asg_min`: The minimum number of worker nodes. Defaults to 2. In an HA deployment, should be >= 2.
`worker_asg_max`: The maximum number of worker nodes. Defaults to 2.
`worker_asg_desired`: The desired number of worker nodes. Defaults to 2.

#### Plan, Deploy & Undeploy

Once you've configured `deployment.tfvars`, run `make plan`. This will show you what resources will be created. If it all looks good, run `make deploy`. This will create all of the infrastructure and a route53 record that points at your BJR deployment.

Once your deployment is up, ssh into one of the nodes (api or worker - doesn't matter). Type `cat /home/ec2-user/initial-admin-password`. This is the randomly generated initial admin password. Open your swagger page by doing to `https://bjr.{domain}`. You will be able to authenticate with the user `admin` and that random password.

If you'd like to tear it all down, run `make undeploy` and Terraform will remove all of the resources and data. If you'd like to keep the data, be sure and do a manual snapshot of the RDS instance that was created.
