module "ec2" {

for_each = var.components

source = "./module"
ami           = var.ami
instance_type = each.value.instance_type
security_groups = var.security_groups
zone_id = var.zone_id
name = each.value.name
}