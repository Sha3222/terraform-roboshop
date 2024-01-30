variable "ami" {
default = "ami-0f3c7d07486cad139"
}
variable "security_group" {
default = [ "sg-0738a0b37e3e0d683" ]
}
variable "instance_type" {
default = "t3.micro"
}

variable "Name" {
default = "pr_local"
}


resource "aws_instance" "myec2" {

  ami                     =  var.ami
  instance_type           =  var.instance_type
  vpc_security_group_ids  =  var.security_group

  tags = {
    Name = var.Name
  }
provisioner "local-exec" {
    command = "ansible aws_instance.myec2.public_ip -m ping"
  }
}