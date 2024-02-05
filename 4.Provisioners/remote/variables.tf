variable "ami"{
default = "ami-0f3c7d07486cad139"
}

variable "instance-type" {
default = "t2.micro"
}

variable "security-groups" {
default = [ "sg-0738a0b37e3e0d683" ]
}

variable "passwd" {
default = "DevOps321"
}