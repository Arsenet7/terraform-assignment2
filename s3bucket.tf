# Create S3 bucket for Terraform state
resource "aws_s3_bucket" "terraform_state" {
  bucket = "terraform-assignment2"
  acl    = "private"
}

# Enable versioning for the bucket
resource "aws_s3_bucket_versioning" "terraform_state_versioning" {
  bucket = aws_s3_bucket.terraform_state.id
  versioning_configuration {
    status = "Enabled"
  }
}
