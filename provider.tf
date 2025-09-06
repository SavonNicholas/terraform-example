terraform {
  cloud {

    organization = "Udemy_test"

    workspaces {
      name = "terraform-example"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}

  provider "aws" {
    region = "us-east-1"
  }