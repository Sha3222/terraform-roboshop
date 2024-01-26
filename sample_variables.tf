## variables
##plain variable
variable "Name" {
 type = string
  default = "Shashank"
}

## Accessing the variables
output "you_name" {
 value = var.Name
}

##plain variables
variable "fruit" {
 default = "apple"
}

output "fruit_name" {
 value = var.fruit
}