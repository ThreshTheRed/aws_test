resource "aws_s3_bucket""example" {
	object_lock_enabled = "true"
	bucket = "danny-test-bucket-es"
}

resource "aws_dynamodb_table" "terraform-lock" {
	name = "terraform-state"
	read_capacity = 5
	write_capacity = 5
	hash_key = "LockID"
	attribute {
		name = "LockID"
		type = "S"
	}
}


