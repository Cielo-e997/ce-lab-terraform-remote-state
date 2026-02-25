terraform {
  backend "s3" {
    bucket         = "cielo-terraform-state-170638199494"
    key            = "main-project/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-state-locks"
  }
}
