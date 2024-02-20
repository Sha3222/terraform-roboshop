module "ec2-machines" {
source = "./local-module"
ami           = var.ami
instance_type = var.instance-type
vpc_security_group_ids = var.security-group
Name = var.name
}

output "info" {
value = module.ec2-machines
}