variable "vpc_id" {
  description = "The id of the VPC that you'd like to deploy this infrastructure in. REQUIRED"
}

variable "domain" {
  description = "The domain to use to find an associated ACM certificate. The ACM certificate must already exist! REQUIRED"
}

variable "key_pair" {
  description = "The key pair to use to allow SSH access into the instances. REQUIRED"
}

variable "alb_subnet_ids" {
  description = "A comma-separated list of subnet ids to use for the ALB. If you'd like your BJR deployment to be public, these should be public subnets (connected to IGW). REQUIRED"
}

variable "subnet_ids" {
  description = "A comma-separated list of subnet ids to use for the API servers, the workers, Redis and MySQL. These should NOT be public subnets! (they should use NAT GW). REQUIRED"
}

variable "api_instance_type" {
  description = "Instance type for the API instances. Defaults to m5.large"
  default     = "m5.large"
}

variable "worker_instance_type" {
  description = "Instance type for the worker instances. Defaults to m5.xlarge"
  default     = "m5.xlarge"
}

variable "rds_instance_type" {
  description = "Instance type for the MySQL RDS instance. Defaults to db.m5.xlarge"
  default     = "db.m5.xlarge"
}

variable "rds_storage" {
  description = "The amount of storage for RDS in GB"
  default     = 10
}

variable "redis_instance_type" {
  description = "Instance type for the Redis Elasticache instance. Defaults to cache.m5.large"
  default     = "cache.m5.large"
}

variable "api_asg_min" {
  description = "The minimum number of API nodes. Defaults to 2. In an HA deployment, should be >= 2."
  default     = 2
}

variable "api_asg_max" {
  description = "The maximum number of API nodes. Defaults to 2."
  default     = 2
}

variable "api_asg_desired" {
  description = "The desired number of API nodes. Defaults to 2."
  default     = 2
}

variable "worker_asg_min" {
  description = "The minimum number of worker nodes. Defaults to 2. In an HA deployment, should be >= 2."
  default     = 2
}

variable "worker_asg_max" {
  description = "The maximum number of worker nodes. Defaults to 2."
  default     = 2
}

variable "worker_asg_desired" {
  description = "The desired number of worker nodes. Defaults to 2."
  default     = 2
}
