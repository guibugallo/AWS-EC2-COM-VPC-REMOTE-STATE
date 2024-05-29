terraform {
  required_version = ">= 1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.51.1"
    }
  }

  backend "s3" {
    bucket = "remote-state-gbugallo-bucket"
    key    = "aws-vm/terraform.tfstate"
    region = "sa-east-1"
  }
}

provider "aws" {
  # Configuration options
  region = "sa-east-1"

  default_tags {
    tags = {
      owner      = "guiBugallo"
      managed-by = "Terraform"
    }
  }
}

data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "remote-state-gbugallo-bucket"
    key    = "aws-vpc/terraform.tfstate"
    region = "sa-east-1"
  }
}