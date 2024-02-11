module "variables" {
source = "../variables/variables.tf"
}
resource "aws_instance" "instance" {
count = length(var.ec2)
ami           = var.ami
instance_type = var.instance-type
vpc_security_group_ids = var.security-id

tags = {
 Name = var.ec2[count.index]
}
}
