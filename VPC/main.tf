#Creating the VPC
resource "aws_vpc" "vpc-1" {
 cidr_block = "10.0.0.0/16"
 tags = {
 Name = "flipkart"
 }
}
#Creating and attaching the internet flipkar-gate way to vpc-1

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

#create a subnets
