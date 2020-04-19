data "aws_ami" "api" {
  most_recent = true
  owners      = ["self"]

  filter {
    name   = "tag:Service"
    values = ["bjr-api"]
  }

  filter {
    name   = "tag:Version"
    values = ["v1"]
  }
}

data "aws_ami" "worker" {
  most_recent = true
  owners      = ["self"]

  filter {
    name   = "tag:Service"
    values = ["bjr-worker"]
  }

  filter {
    name   = "tag:Version"
    values = ["v1"]
  }
}

data "aws_acm_certificate" "bjr" {
  domain = "bjr.${var.domain}"
  types  = ["AMAZON_ISSUED"]
}

data "aws_route53_zone" "bjr" {
  name = "${var.domain}."
}
