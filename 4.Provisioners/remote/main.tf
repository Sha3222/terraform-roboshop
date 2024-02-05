resource "aws_instance" "my-ec2" {
  ami           = var.ami
  instance_type = var.instance-type
  vpc_security_group_ids = var.security-groups

  tags = {
    Name = "my-ec2"
  }

  connection {
   type = "ssh"
   user = "centos"
   password = var.passwd
   host = self.public_ip
  }

  provisioner "remote-exec" {
  inline = [
  #!/bin/bash
  "sudo yum install nginx"
  "sudo systemctl start nginx"
  ]
  }
}