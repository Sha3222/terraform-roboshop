module "ec2" {
for_each = var.components
source = "./module"
ami           = var.ami
instance_type = each.value.instance_type
vpc_security_group_ids = var.security_group
zone_id = var.zone
name = each.value.name

}