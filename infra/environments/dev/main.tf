data "aws_caller_identity" "current" {}
data "aws_region" "current" {}

locals {
  name_prefix = "${var.project_name}-${var.environment}"
  common_tags = {
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "Terraform"
    Owner       = "Julio Gutierrez"
  }
}

resource "aws_s3_bucket" "app_bucket" {
  bucket = "${local.name_prefix}-jg"
  tags = merge(
    local.common_tags,
    {
      Name = "${local.name_prefix}-app-bucket"
    }
  )
}