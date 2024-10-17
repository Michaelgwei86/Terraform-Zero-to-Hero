output "bucket_arn" {
  value       = aws_s3_bucket.prod_s3_bucket.arn
  description = "description"
}