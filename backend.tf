terraform {
  backend "s3" {
    bucket         = "terra-assignment2"
    key            = "state/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "terra-assignment2-backend"
  }
}
