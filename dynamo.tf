resource "aws_dynamodb_table" "backend_table" {
  name         = "terraform_state_db_table"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }


}