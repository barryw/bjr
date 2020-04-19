resource "aws_elasticache_cluster" "bjr-redis" {
  cluster_id           = "bjr-redis"
  engine               = "redis"
  node_type            = "${var.redis_instance_type}"
  num_cache_nodes      = 1
  parameter_group_name = "default.redis4.0"
  engine_version       = "4.0.10"
  security_group_ids   = ["${aws_security_group.bjr-redis.id}"]

  #subnet_group_name    = "{aws_elasticache_subnet_group.bjr-redis.name}"
  port = 6379
}

# resource "aws_elasticache_subnet_group" "bjr-redis" {
#   name       = "bjr-redis"
#   subnet_ids = ["${split(",", var.subnet_ids)}"]
# }

