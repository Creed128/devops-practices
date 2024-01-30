variable "aws_region" {
  description = "The AWS region where the S3 bucket and DynamoDB table are created."
  default     = "eu-central-1"
}

variable "bucket_name" {
  description = "The name of the S3 bucket to create for storing Terraform state."
  type        = string
}

variable "dynamodb_table_name" {
  description = "The name of the DynamoDB table to create for Terraform state locking."
  type        = string
}
