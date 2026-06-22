output "terraform_state_bucket_name" {
  description = "The name of the S3 bucket used for Terraform state storage."
  value       = aws_s3_bucket.terraform_state.bucket
}

output "terraform_state_bucket_arn" {
  description = "The ARN of the S3 bucket used for Terraform state storage."
  value       = aws_s3_bucket.terraform_state.arn
}

output "aws_account_id" {
  description = "The AWS account ID where the Terraform state bucket is located."
  value       = data.aws_caller_identity.current.account_id
}

output "aws_region" {
  description = "The AWS region where the Terraform state bucket is located."
  value       = data.aws_region.current.name
}