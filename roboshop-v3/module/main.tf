resource "aws_instance" "instances" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_groups

  tags = {
    Name = var.name
  }
}
resource "aws_route53_record" "DNS-records" {
 zone_id = var.zone_id
 name    = "${lookup(each.value, "name", null)}.sreddy.online"
 type    = "A"
 ttl     = 30
 records = [lookup(lookup(aws_instance.instances, each.key, null), "private_ip", null)]
}

