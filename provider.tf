terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>6.31.0"
    }


  }
  required_version = "~>v1.15.0"

}
provider "aws" {
  region = "ap-south-1"

}

