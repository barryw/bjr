resource "aws_route53_record" "bjr" {
  zone_id = "${data.aws_route53_zone.bjr.zone_id}"
  name    = "bjr.${var.domain}"
  type    = "A"

  alias {
    name                   = "${aws_alb.bjr-api.dns_name}"
    zone_id                = "${aws_alb.bjr-api.zone_id}"
    evaluate_target_health = true
  }
}
