terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.31.0"
    }
  }
}

provider "aws" {
  region  = "eu-central-1"
  profile = "aws_terraform"

  default_tags {
    tags = {
      project = "rds-ops-with-terraform-and-mariadb"
    }
  }
}
