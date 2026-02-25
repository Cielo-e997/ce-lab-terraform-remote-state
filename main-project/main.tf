terraform {
  required_version = ">= 1.6.0"

  backend "s3" {
    bucket         = "cielo-terraform-state-170638199494"
    key            = "main-project/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-state-locks"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "example" {
  bucket = "${var.project_name}-example-bucket"
  
  tags = {
    Name        = "${var.project_name}-bucket"
    Environment = var.environment
  }
}
