resource "aws_s3_bucket" "store_files" {
 bucket = var.bucket
 acl    = var.acl
 region = var.region

 versioning {
   status = var.versioning
 }

 tags = {
   Name = var.Name
   Environment = var.Environment
 }
}

output "s3_bucket" {
 value = aws_s3_bucket.store_files
}
