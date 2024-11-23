variable "s3_bucket_name" {
  description = "The name of the S3 bucket to store the Terraform state."
  type        = string
  default     = "terra-assignment2"
}

variable "dynamodb_table_name" {
  description = "The name of the DynamoDB table for state locking."
  type        = string
  default     = "terra-assignment2-backend"
}

variable "tags" {
  description = "Tags to assign to resources."
  type        = map(string)
  default = {
    Environment = "Assignment"
    ManagedBy   = "Terraform"
  }
}
