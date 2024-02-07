variable "components" {
 default = {
 frontend = { name = "frontend" }
 mongodb  = { name = "mongodb" }
 }
}

variable "ami" {
 default = "ami-0f3c7d07486cad139"
}

variable "instance-type" {
 default = "t2.micro"
}

variable "security-groups" {
 default = [ "sg-0738a0b37e3e0d683" ]
}

resource "aws_instance" "instance" {
  for_each               =  var.components
  ami                    =  var.ami
  instance_type          =  var.instance_type
  vpc_security_group_ids =  var.security-groups

  tags = {
    Name = each.value
  }

}