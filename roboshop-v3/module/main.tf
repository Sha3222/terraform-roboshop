resource "aws_instance" "instances" {
  ami           = var.ami
  instance_type = var.components
  vpc_security_group_ids = var.security_group

  tags = {
    Name = var.components
  }
}
resource "aws_route53_record" "DNS-records" {
 zone_id = var.zone
 name    = "${lookup(each.value, "name", null)}.sreddy.online"
 type    = "A"
 ttl     = 30
 records = [lookup(lookup(aws_instance.instances, each.key, null), "private_ip", null)]
}

