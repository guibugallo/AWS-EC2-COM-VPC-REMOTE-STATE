terraform {
  required_version = ">= 1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.51.1"
    }
  }

  backend "s3" {
    bucket = "nome-do-seu-bucket"
    key    = "caminho/terraform.tfstate" #caminho que irá gravar o tfstate no bucket da AWS de forma remota
    region = "sa-east-1"
  }
}

provider "aws" {
  # Configuration options
  region = "sa-east-1"

  default_tags {
    tags = {
      owner      = "exemplo"
      managed-by = "Terraform"
    }
  }
}

data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "nome-do-seu-bucket"
    key    = "caminho/terraform.tfstate" #este caminho precisa ser o do tfstate que contenha a criação da VPC
    region = "sa-east-1"
  }
}
