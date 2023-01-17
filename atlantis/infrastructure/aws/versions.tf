terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
    http = {
      source = "hashicorp/http"
      version = "~> 3.0"
    }
  }
  backend "s3" {
    bucket = "terraform-20221206184034105500000001"
    key = "atlantis.tfstate"
    region = "us-west-1"
  }
}
