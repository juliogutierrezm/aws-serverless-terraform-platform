data "aws_caller_identity" "current" {}
data "aws_region" "current" {}

locals {
  name_prefix = "${var.project_name}-${var.environment}"

  state_bucket_name = "${local.name_prefix}-tfstate-${data.aws_caller_identity.current.account_id}"

  common_tags = {
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "Terraform"
    Owner       = "Julio Gutierrez"
    Purpose     = "Terraform Remote State Storage"
  }
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = local.state_bucket_name

  tags = merge(
    local.common_tags,
    {
      Name = "${local.name_prefix}-terraform-state"
    }
  )
}

resource "aws_s3_bucket_versioning" "terraform_state_versioning" {
  bucket = aws_s3_bucket.terraform_state.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_public_access_block" "terraform_state" {
  bucket = aws_s3_bucket.terraform_state.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}