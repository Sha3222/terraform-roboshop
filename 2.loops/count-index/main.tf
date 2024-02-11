variable "ec2" {
default = ["ec21", "ec2"]
}
variable "ami" {
default = "ami-0f3c7d07486cad139"
}
variable "security-id" {
default = [ "sg-0738a0b37e3e0d683" ]
 }
variable "instance-type" {
default = "t2.micro"
}


resource "aws-instance" "instances" {
ami           = var.ami
instance_type = var.instance_type
vpc_security_group_ids = var.security-id
count = 2
tags = {
 Name = var.ec2
}
}