resource "aws_security_group" "bjr-redis" {
  name        = "bjr-redis"
  description = "Allow inbound on 6379 from API and worker nodes"
  vpc_id      = "${var.vpc_id}"

  ingress {
    description     = "Redis from API and worker nodes"
    from_port       = 6379
    to_port         = 6379
    protocol        = "tcp"
    security_groups = ["${aws_security_group.bjr-api.id}", "${aws_security_group.bjr-worker.id}"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "bjr-alb" {
  name        = "bjr-alb"
  description = "Allow inbound on 443 and 80 from the world"
  vpc_id      = "${var.vpc_id}"

  ingress {
    description = "443 from the world"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "80 from the world"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "bjr-api" {
  name        = "bjr-api"
  description = "Allow inbound on 3000 from ALB"
  vpc_id      = "${var.vpc_id}"

  ingress {
    description     = "Rails port 3000 from ALB"
    from_port       = 3000
    to_port         = 3000
    protocol        = "tcp"
    security_groups = ["${aws_security_group.bjr-alb.id}"]
  }

  ingress {
    description     = "SSH from the world"
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    security_groups = ["${aws_security_group.bjr-ssh.id}"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "bjr-worker" {
  name        = "bjr-worker"
  description = "Allow inbound on 22 from the world"
  vpc_id      = "${var.vpc_id}"

  ingress {
    description     = "SSH from the world"
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    security_groups = ["${aws_security_group.bjr-ssh.id}"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "bjr-rds" {
  name        = "bjr-rds"
  description = "Allow inbound on 3306 from API and worker nodes"
  vpc_id      = "${var.vpc_id}"

  ingress {
    description     = "MySQL from API and worker nodes"
    from_port       = 3306
    to_port         = 3306
    protocol        = "tcp"
    security_groups = ["${aws_security_group.bjr-api.id}", "${aws_security_group.bjr-worker.id}"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "bjr-ssh" {
  name        = "bjr-ssh"
  description = "Allow inbound on 22 from the world"
  vpc_id      = "${var.vpc_id}"

  ingress {
    description = "22 from the world"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
