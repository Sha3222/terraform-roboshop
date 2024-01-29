variables "components" {
default = [ "frontend", "mongodb"]
}

resource "aws_instance" "instance" {
 count = length(var.components)

 ami = "ami-0f3c7d07486cad139"
 instance_type = "t2.micro"
 vpc_security_group_ids = [ "sg-0738a0b37e3e0d683" ]

 tags = {
  //Name = var.components[count.index]
  Name = element(var.components, count.index)
 }

}