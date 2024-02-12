module "variables" {
source = "../variables"
}
resource "aws_instance" "instance" {
count = length(var.ec2)
ami           = var.ami
instance_type = var.instance-type
vpc_security_group_ids = var.security-group

tags = {
 Name = var.ec2[count.index]
}
}
