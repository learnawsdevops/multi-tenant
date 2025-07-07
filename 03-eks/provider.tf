terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.95.0, < 6.0.0"
    }
    tls = {
      source = "hashicorp/tls"
      version = ">= 3.0.0"
    }
    time = {
      source = "hashicorp/time"
      version = ">= 0.9.0"
    }
  }

  backend "s3" {
    bucket         = "hitesh-tenant-eks"
    key            = "eks"
    region         = "us-east-1"
    dynamodb_table = "hitesh-tenant-locking-dev"
  }
}

provider "aws" {
  region = "us-east-1"
}