## v1.2 - Remote State

In this stage, the project was updated to use an S3 backend for Terraform remote state.

### Why remote state?

Remote state allows Terraform to store infrastructure state outside the local machine. This makes the project closer to a real-world workflow because the state is centralized and can be shared safely across environments or team members.

### Bootstrap

The `infra/bootstrap` directory creates the S3 bucket used by Terraform to store the remote state.

### Dev Environment

The `infra/environments/dev` directory uses the S3 backend and manages the application infrastructure.

### Current Resources

- S3 bucket for Terraform remote state
- S3 bucket for application/project usage