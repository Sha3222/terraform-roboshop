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
## Accessing the list of variables
output "fruits_names" {
 value = var.fruits[0]

}

output "fruits_names1" {
 value = var.fruits[1]

}

output "fruits_names2" {
 value = var.fruits[2]

}

##Map of variables

variable "fruit_stock" {
default = {
  apple = 100
  banana = 200
}
}

variable "fruits_price_stock" {
 default = {
  apple =  {
   stock = 100
   price = 3
 }
 banana = {
  stock = 400
  price = 1
 }
}
}

## Accessing the map of variables
output "fruits_stock_apple" {
 value = var.fruit_stock["apple"]
}

output "fruits_price_stock_banana" {
 value = var.fruits_price_stock["banana"].stock
}

#variable Data types
variable "fruit_info" {
default = {
apple = 100
}
}

variable "fruit_details" {
default = {
apple = {
 stock = 100
 price = 3
 type  = soft
}
banana = {
 stock = 200
 price = 2
}
}
}
## variable in a combination of any other string then it needs to be with in  ${}

output "fruit_names" {
value = "fruit_name = ${var.fruit_info["apple"]}"
}

output "All_fruit_info" {
value = "fruit_type = ${var.fruit_details["apple"].type} fruit_stock = ${var.fruit_details["apple"].stock} fruit_price = ${var.fruit_details["apple"].price}"
}