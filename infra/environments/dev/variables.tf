variable "aws_region" {
  description = "The aws region where the resources will be created"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name used for naming resources"
  type        = string
  default     = "serverless-terraform-platform"
  validation {
    condition     = length(var.project_name) >= 3 && length(var.project_name) <= 40
    error_message = "Project name must be between 3 and 40 characters."
  }
}
variable "environment" {
  description = "Deployment environment (e.g., dev, staging, prod)"
  type        = string
  default     = "dev"

  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "Environment must be one of: dev, staging, prod."
  }
}
