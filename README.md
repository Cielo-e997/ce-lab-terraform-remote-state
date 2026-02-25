# Lab M4.03 - Remote State & Backends

## Overview
Configured remote state storage in S3 with DynamoDB locking.

## Infrastructure
- **State Bucket:** cielo-terraform-state-170638199494
- **Lock Table:** terraform-state-locks
- **Encryption:** AES256
- **Versioning:** Enabled

## Backend Configuration
```hcl
backend "s3" {
  bucket         = "cielo-terraform-state-170638199494"
  key            = "main-project/terraform.tfstate"
  region         = "us-east-1"
  encrypt        = true
  dynamodb_table = "terraform-state-locks"
}
## Security
- Bucket encrypted at rest
- Public access blocked
- Versioning enabled
- State locking prevents concurrent modifications
