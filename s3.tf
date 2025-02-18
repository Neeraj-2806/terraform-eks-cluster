resource "aws_s3_bucket" "backend" {
  bucket = "terraform-state-file-bucket-${random_string.bucket.result}"

}

resource "aws_s3_bucket_versioning" "backend" {
  bucket = aws_s3_bucket.backend.id
  versioning_configuration {
    status = "Enabled"
  }

}
resource "random_string" "bucket" {
  length  = 5
  special = false

}