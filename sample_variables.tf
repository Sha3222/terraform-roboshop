## variables

variable "Name" {
 type = string
  default = "Shashank"
}

## Accessing the variables
output "you_name" {
 value = var.Name
}