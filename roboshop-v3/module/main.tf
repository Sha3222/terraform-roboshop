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
 name    = "${var.name}.sreddy.online"
 type    = "A"
 ttl     = 30
 records = [aws_instance.instances.private_ip]
}

