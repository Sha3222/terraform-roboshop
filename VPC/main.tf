#Creating the VPC
resource "aws_vpc" "vpc-1" {
 cidr_block = "10.0.0.0/16"
 tags = {
 Name = "flipkart"
 }
}
#Creating and attaching the internet gate way to flipkart-vpc

resource "aws_internet_gateway" "flipkart-gateway" {
 vpc_id = aws_vpc.vpc-1.id
 tags = {
 Name = "flipkart-gateway"
 }
}
resource "aws_internet_gateway_attachment"  "gate-way" {
 internet_gateway_id = aws_internet_gateway.flipkart-gateway.id
 vpc_id = aws_vpc.vpc-1.id
}

output "Result-vpc" {
 value = aws_vpc.vpc-1
}
output "Result-gateway" {
 value = aws_internet_gateway.flipkart-gateway
}
output "Result-attach" {
 value = aws_internet_gateway_attachment.gate-way
}