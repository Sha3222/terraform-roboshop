#Creating the VPC
resource "aws_vpc" "vpc-1" {
 cidr_block = "10.0.0.0/16"
 tags = {
 Name = "flipkart"
 }
}
#Creating and attaching the internet flipkart-gate way to vpc-1

resource "aws_internet_gateway" "flipkart-gateway" {
 vpc_id = "${aws_vpc.vpc-1.id}"
 tags = {
 Name = "flipkart-gateway"
 }
}
resource "aws_internet_gateway_attachment"  "gate-way" {
 internet_gateway_id = "${aws_internet_gateway.flipkart-gateway.id}"
 vpc_id = "${aws_vpc.vpc-1.id}"
}

#creating a subnets
resource "aws_subnet" "flipkart-subnets" {
 for_each = var.info
 vpc_id = "${aws_vpc.vpc-1.id}"
 cidr_block = lookup(each.value, "cidr_block", null)
 availability_zone = lookup(each.value, "availability_zone", null)

 tags = {
 Name = lookup(each.value, "Name", null)
 }
}

#creating route tables
create a route tables
resource "aws_route_table" "route-tables" {
 for_each = var.names
 vpc_id = "${aws_vpc.vpc-1.id}"
tags = {
Name = lookup(each.value, "Name", null)
}
}


