## variables

variable "Name" {
 type = string
 value = "Shashank"
}

## Accessing the variables
output you_name {
 value = var.Name
}