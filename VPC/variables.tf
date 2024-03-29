# for subnets creation
variable "info" {
default = {
flipkart-public-1a = {
Name = "Flipkart-public-1a"
cidr_block = "10.0.1.0/24"
availability_zone = "us-east-1a"
}
flipkart-public-2b = {
Name = "Flipkart-public-2b"
cidr_block = "10.0.2.0/24"
availability_zone = "us-east-2a"
}
flipkart-private-1a = {
Name = "Flipkart-private-1a"
cidr_block = "10.0.11.0/24"
availability_zone = "us-east-1a"
}
flipkart-private-2b = {
Name = "Flipkart-private-2b"
cidr_block = "10.0.12.0/24"
availability_zone = "us-east-2a"
}
flipkart-date-base-1a = {
Name = "Flipkart-date-base-1a"
cidr_block = "10.0.21.0/24"
availability_zone = "us-east-1a"
}
flipkart-data-base-2b = {
Name = "Flipkart-data-base-2b"
cidr_block = "10.0.22.0/24"
availability_zone = "us-east-2a"
}
}
}

#for route_table
variable "names" {
default = {
flipkart-public = {
Name = "Flipkart-public-route"
}
flipkart-private = {
Name = "Flipkart-private-route"
}
flipkart-private-database = {
Name = "Flipkart-database-route"
}
}
}

#subnets list
variable "subnets" {
default = {
flipkart-public-1a = {
Name = "Flipkart-public-1a"
}
flipkart-public-2b = {
Name = "Flipkart-public-2b"
}
flipkart-private-1a = {
Name = "Flipkart-private-1a"
}
flipkart-private-2b = {
Name = "Flipkart-private-2b"
}
flipkart-date-base-1a = {
Name = "Flipkart-date-base-1a"
}
flipkart-data-base-2b = {
Name = "Flipkart-data-base-2b"
}
}
}