
terraform {
  backend "s3" {
    bucket = "terraform-state-file-bucket-7il57"
    key = "terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "terraform_state_db_table"
  }
}
