variable "aws_region" {
  description = "The AWS region to deploy resources in."
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "The name of the project."
  type        = string
  default     = "serverless-terraform-platform"

  validation {
    condition     = length(var.project_name) >= 3 && length(var.project_name) <= 40
    error_message = "The project_name must be between 3 and 40 characters in length."
  }
}

variable "environment" {
  description = "The deployment environment (e.g., dev, staging, prod)."
  type        = string
  default     = "dev"

  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "The environment must be one of 'dev', 'staging', or 'prod'."
  }
}