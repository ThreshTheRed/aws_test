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
 aws_dynamodb_table "terraform-lock" {
  name = "terraform_state"
  billing_mode = "PROVISIONED"
  read_capacity = 5
  write_capacity = 5
  hash_key = "LockId"
  
  attribute {
   name = "LockId"
   type = "S"
   }
 }  
}

provider "aws" {
 region = "eu-central-1"
}
