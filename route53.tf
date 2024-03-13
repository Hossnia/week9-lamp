resource "aws_route53_record" "rc1" {
  zone_id = "Z008168718JM1BCQG9PE8"
  type = "A"
  name = "resume.hossniat.site"
  ttl = 300
  records = [ aws_lightsail_instance.server1.public_ip_address ]
}

