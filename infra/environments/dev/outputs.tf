output "bucket_name" {
  description = "Name of the S3 bucket created for the application"
  value       = aws_s3_bucket.app_bucket.bucket
}