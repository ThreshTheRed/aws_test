terraform {
 required_providers {
  aws = {
   source = "hashicorp/aws"
   version = "5.37.0"
   }
  }

 backend "s3" {
  bucket = "backend_1"
  key = "terraform.tfstate"
  region = "eu-central-1"
  dynamodb_table = "terraform-lock"
  encrypt = true
 }
}

provider "aws" {
 region = "eu-central-1"
}
