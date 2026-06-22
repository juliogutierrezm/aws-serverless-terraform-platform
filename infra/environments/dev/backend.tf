terraform {
    backend "s3" {
        bucket = "serverless-terraform-platform-dev-tfstate-670794226750"
        key    = "environments/dev/terraform.tfstate"
        region = "us-east-1"
        use_lockfile = true
        encrypt = true
    }
}