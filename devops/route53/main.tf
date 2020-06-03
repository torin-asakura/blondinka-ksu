resource "aws_route53_zone" "main" {
  name = var.route_zone

  comment       = "Managed by Terraform"
  force_destroy = false

  tags = {
    Terraformed = "true"
    Name        = "blondinkaksu.com"
  }
}

resource "aws_route53_record" "blondinkaksu_com" {
  name = "blondinkaksu.com"
  type = "A"
  zone_id = aws_route53_zone.main.id
  records = ["37.140.192.245"]
  ttl = 300
}

resource "aws_route53_record" "www_blondinkaksu_com" {
  name = "www.blondinkaksu.com"
  type = "A"
  zone_id = aws_route53_zone.main.id
  records = ["37.140.192.245"]
  ttl = 300
}

resource "aws_route53_record" "yandex_verification" {
  name = "blondinkaksu.com"
  type = "TXT"
  zone_id = aws_route53_zone.main.id
  records = ["d5dce2cbf73770a8"]
  ttl = 300
}
