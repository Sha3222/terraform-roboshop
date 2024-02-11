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


resource "aws_instance" "instances" {
ami           = var.ami
instance_type = var.instance-type
vpc_security_group_ids = var.security-id

tags = {
 Name = var.ec2.${count.index}
}
}