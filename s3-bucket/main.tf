resource "aws_s3_bucket" "store_files" {
 bucket = var.bucket
 acl    = var.acl

 versioning {
   enabled = var.versioning
 }

 tags = {
   Name = var.Name
   Environment = var.Environment
 }
}

output "s3_bucket" {
 value = aws_s3_bucket.store_files.id
}

//terraform {
//backend "s3" {
   // bucket =
    //key    = "path/to/my/key"
  //  region = "us-east-1"
 // }
//}