variable "ami" {
default = "ami-0f3c7d07486cad139"
}

variable "instance_type" {
default = "t2.micro"
}

variable "security_group" {
default = [ "sg-0738a0b37e3e0d683" ]
}

variable "zone" {
default = "Z082591214E2K79TAHGZM"
}

variable "components" {
 default = {
 frontend = { name = "frontend-dev" }
 catalogue = { name = "catalogue-dev" }
 mongodb = { name = "mongodb-dev" }
 user = { name = "user-dev" }
 redis = { name = "redis-dev" }
 cart = { name = "cart-dev" }
 mysql = { name = "mysql-dev" }
 shipping = { name = "shipping-dev" }
 payment = { name = "payment-dev" }
 rabbitmq = { name = "rabbitmq-dev" }

 }
}

resource "aws_instance" "instances" {

  for_each = var.components
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_group

  tags = {
    Name = lookup(each.value, "name", null)
  }
}
resource "aws_route53_record" "DNS-records" {
 for_each = var.components
 zone_id = var.zone
 name    = "${lookup(each.value, "name", null)}.sreddy.online"
 type    = "A"
 ttl     = 30
 records = [lookup(lookup(aws_instance.instances, each.key, null), "private_ip", null) ]

}
