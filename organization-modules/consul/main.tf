terraform {
  backend "s3" {
    bucket         = "devops-directive-tf-state-0"
    key            = "./terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-locking"
    encrypt        = true
  }
   required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

module "consul" {
    source = "git@github.com:hashicorp/terraform-aws-consul.git"
}