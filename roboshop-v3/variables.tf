variable "ami" {
default = "ami-0f3c7d07486cad139"
}
variable "security_groups" {
default = [ "sg-0738a0b37e3e0d683" ]
}

variable "zone_id" {
default = "Z082591214E2K79TAHGZM"
}

variable "components" {
default = {
 frontend = {
  name = "frontend", instance_type = "t2.micro"
 }
 mongodb = {
 name = "mongodb", instance_type = "t2.micro"
}
 cart = {
 name = "cart", instance_type = "t2.micro"
}
}
}