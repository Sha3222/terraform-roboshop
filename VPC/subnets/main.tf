resource "aws_subnet" "flipkart-public-1a" {
 for_each = var.info
 vpc_id = "${aws_vpc.vpc-1.id}"
 cidr_block = lookup(each.value, "cidr_block", null)
 availability_zone = lookup(each.value, "availability_zone", null)

 tags = {
 Name = lookup(each.value, "Name", null)
 }

}