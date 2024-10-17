# Create an S3 bucket
resource "aws_s3_bucket" "prod_s3_bucket" {
  bucket = var.bucket_name

  tags = {
    Name = var.bucket_tag
  }

}