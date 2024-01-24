resource "aws_instance" "frontend" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t2.micro"
  security_groups = "sg-0738a0b37e3e0d683"

  tags = {
    Name = "frontend"
  }
}
resource "aws_instance" "mongodb" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t2.micro"
  security_groups = "sg-0738a0b37e3e0d683"

  tags = {
    Name = "mongodb"
  }
}
resource "aws_instance" "catalogue" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t2.micro"
  security_groups = "sg-0738a0b37e3e0d683"

  tags = {
    Name = "catalogue"
  }
}
resource "aws_instance" "redis" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t2.micro"
  security_groups = "sg-0738a0b37e3e0d683"

  tags = {
    Name = "redis"
  }
}
resource "aws_instance" "user" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t2.micro"
  security_groups = "sg-0738a0b37e3e0d683"

  tags = {
    Name = "user"
  }
}
resource "aws_instance" "cart" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t2.micro"
  security_groups = "sg-0738a0b37e3e0d683"

  tags = {
    Name = "cart"
  }
}
resource "aws_instance" "mysql" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t2.micro"
  security_groups = "sg-0738a0b37e3e0d683"

  tags = {
    Name = "mysql"
  }
}
resource "aws_instance" "shipping" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t2.micro"
  security_groups = "sg-0738a0b37e3e0d683"

  tags = {
    Name = "shipping"
  }
}
resource "aws_instance" "rabbitmq" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t2.micro"
  security_groups = "sg-0738a0b37e3e0d683"

  tags = {
    Name = "rabbitmq"
  }
}
resource "aws_instance" "payment" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t2.micro"
  security_groups = "sg-0738a0b37e3e0d683"

  tags = {
    Name = "payment"
  }
}