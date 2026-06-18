locals {
  common_tags = {
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "Terraform"
    Owner       = "Julio Gutierrez"
  }
}

resource "aws_s3_bucket" "app_bucket" {
  bucket = "${var.project_name}-${var.environment}-jg"
  tags   = local.common_tags
}