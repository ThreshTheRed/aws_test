terraform {
 backend "s3" {
  bucket	= "aws-backend"
  key		= "terraform.tfstate"
  region	= "eu-central-1"
  dynamodb_table	= "terraform_state"
	}
}
