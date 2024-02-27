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
 value = aws_s3_bucket.store_files
}


backend "s3" {
    bucket = aws_s3_bucket.store_files.bucket
    key    = "path/to/my/key"
    region = "us-east-1"
  }