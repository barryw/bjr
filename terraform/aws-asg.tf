resource "aws_autoscaling_group" "bjr-api" {
  name                      = "bjr-api"
  launch_configuration      = "${aws_launch_configuration.bjr-api.name}"
  min_size                  = "${var.api_asg_min}"
  max_size                  = "${var.api_asg_max}"
  desired_capacity          = "${var.api_asg_desired}"
  vpc_zone_identifier       = ["${split(",", var.subnet_ids)}"]
  health_check_type         = "ELB"
  health_check_grace_period = 600

  tag {
    key                 = "Name"
    value               = "bjr-api"
    propagate_at_launch = true
  }
}

resource "aws_launch_configuration" "bjr-api" {
  name_prefix                 = "bjr-api-"
  image_id                    = "${data.aws_ami.api.id}"
  instance_type               = "${var.api_instance_type}"
  key_name                    = "${var.key_pair}"
  security_groups             = ["${aws_security_group.bjr-api.id}", "${aws_security_group.bjr-ssh.id}"]
  associate_public_ip_address = false
  user_data                   = "${data.template_file.bjr.rendered}"
}

resource "aws_autoscaling_group" "bjr-worker" {
  name                      = "bjr-worker"
  launch_configuration      = "${aws_launch_configuration.bjr-worker.name}"
  min_size                  = "${var.worker_asg_min}"
  max_size                  = "${var.worker_asg_max}"
  desired_capacity          = "${var.worker_asg_desired}"
  vpc_zone_identifier       = ["${split(",", var.subnet_ids)}"]
  health_check_type         = "ELB"
  health_check_grace_period = 600

  tag {
    key                 = "Name"
    value               = "bjr-worker"
    propagate_at_launch = true
  }
}

resource "aws_launch_configuration" "bjr-worker" {
  name_prefix                 = "bjr-worker-"
  image_id                    = "${data.aws_ami.worker.id}"
  instance_type               = "${var.worker_instance_type}"
  key_name                    = "${var.key_pair}"
  security_groups             = ["${aws_security_group.bjr-worker.id}", "${aws_security_group.bjr-ssh.id}"]
  associate_public_ip_address = false
  user_data                   = "${data.template_file.bjr.rendered}"
}

data "template_file" "bjr" {
  template = "${file("${path.module}/scripts/cloud-init.yml")}"

  vars {
    redis_host             = "${aws_elasticache_cluster.bjr-redis.cache_nodes.0.address}"
    redis_port             = "${aws_elasticache_cluster.bjr-redis.cache_nodes.0.port}"
    redis_sidekiq_db       = "0"
    mysql_host             = "${aws_db_instance.mysql.address}"
    mysql_port             = "${aws_db_instance.mysql.port}"
    mysql_username         = "bjr"
    mysql_password         = "${aws_db_instance.mysql.password}"
    initial_admin_password = "${random_id.initial_admin_password.hex}"
    secret_key_base        = "${random_id.secret_key_base.hex}"
  }
}

resource "random_id" "initial_admin_password" {
  byte_length = 8
}

resource "random_id" "secret_key_base" {
  byte_length = 32
}
