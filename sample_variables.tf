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

##List of Variables

variable "fruits" {
default = ["Apple" , "Orange" , "Mango"]
}

output "fruits_names" {
 value = var.fruits[0]

}

output "fruits_names1" {
 value = var.fruits[1]

}

output "fruits_names2" {
 value = var.fruits[2]

}