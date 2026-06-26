output "bucket_name" {
  description = "Name of the S3 bucket created for the application"
  value       = aws_s3_bucket.app_bucket.bucket
}

output "aws_region" {
  description = "AWS region where the resources are created"
  value       = data.aws_region.current.name
}

output "aws_account_id" {
  description = "AWS account ID where the resources are created"
  value       = data.aws_caller_identity.current.account_id
}

output "bucket_arn" {
  description = "ARN of the S3 bucket created for the application"
  value       = aws_s3_bucket.app_bucket.arn
}

output "common_tags" {
  description = "Common tags applied to all resources"
  value       = local.common_tags
}

output "app_bucket_domain_name" {
description = "This is the domain name for bucket"
value 	=  aws_s3_bucket.app_bucket.bucket_domain_name
}