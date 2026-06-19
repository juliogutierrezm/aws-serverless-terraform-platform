# Architecture Notes

## Current Stage: v1.1 - Terraform Foundation

At this stage, the project creates a basic AWS S3 bucket using Terraform.

## Why S3 first?

S3 is a simple AWS resource that allows us to practice the Terraform workflow without introducing too much complexity. It helps us understand providers, variables, locals, tags, outputs, data sources, state, and basic AWS resource management.

## Concepts Practiced

- AWS provider configuration
- Input variables
- Variable validation
- Local values
- Common tags
- Data sources
- Outputs
- Terraform state inspection

## Current Resources

- S3 bucket for application/project storage

## Next Steps

- Add remote state using S3
- Add DynamoDB lock table
- Add Lambda function
- Add API Gateway