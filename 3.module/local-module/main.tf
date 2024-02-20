resource "aws-instance" "instance-machine" {
  ami           = var.ami
  instance_type = var.instance-type
  vpc_security_group_ids = var.security-group
 tags = {
 Name = var.name
 }
}