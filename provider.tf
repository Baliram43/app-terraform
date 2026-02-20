terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>6.31.0"
    }


  }
  required_version = "~>v1.15.0"

  backend "s3" {
    region = "ap-south-1"
    bucket = "mys3bucket-terraform-demo"
    key    = "devops/vpcstate"
    dynamodb_table="mydbtable"
    #use_lockfile=true
  }
}
provider "aws" {
  region = "ap-south-1"
}



