resource "aws_alb" "bjr-api" {
  name               = "bjr-api"
  internal           = false
  security_groups    = ["${aws_security_group.bjr-alb.id}"]
  subnets            = ["${split(",", var.alb_subnet_ids)}"]
  load_balancer_type = "application"
}

resource "aws_alb_listener" "api" {
  load_balancer_arn = "${aws_alb.bjr-api.arn}"
  port              = "443"
  protocol          = "HTTPS"
  certificate_arn   = "${data.aws_acm_certificate.bjr.arn}"

  default_action {
    target_group_arn = "${aws_alb_target_group.bjr-api.arn}"
    type             = "forward"
  }
}

resource "aws_alb_target_group" "bjr-api" {
  name     = "bjr-api"
  protocol = "HTTP"
  port     = 3000
  vpc_id   = "${var.vpc_id}"

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    interval            = 30
    protocol            = "HTTP"
    path                = "/health"
  }
}

resource "aws_autoscaling_attachment" "bjr-api" {
  autoscaling_group_name = "${aws_autoscaling_group.bjr-api.id}"
  alb_target_group_arn   = "${aws_alb_target_group.bjr-api.arn}"
}
