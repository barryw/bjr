resource "aws_db_instance" "mysql" {
  identifier             = "bjr"
  allocated_storage      = "${var.rds_storage}"
  storage_type           = "gp2"
  storage_encrypted      = "true"
  engine                 = "mysql"
  engine_version         = "5.7"
  instance_class         = "${var.rds_instance_type}"
  name                   = "bjr_production"
  username               = "bjr"
  password               = "${random_id.mysql-password.hex}"
  db_subnet_group_name   = "${aws_db_subnet_group.bjr.name}"
  vpc_security_group_ids = ["${aws_security_group.bjr-rds.id}"]
  skip_final_snapshot    = true
}

resource "aws_db_subnet_group" "bjr" {
  name       = "bjr-rds-subnet-group"
  subnet_ids = ["${split(",", var.subnet_ids)}"]
}

resource "random_id" "mysql-password" {
  byte_length = 16
}
