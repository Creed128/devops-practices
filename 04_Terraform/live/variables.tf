variable "region" {
  description = "The AWS region to deploy resources."
  type        = string
}

variable "environment" {
  description = "The deployment environment (e.g., dev, staging, prod)."
  type        = string
}

# S3 Bucket Variables
variable "s3_bucket_name" {
  description = "The name of the S3 bucket."
  type        = string
}

variable "s3_bucket_acl" {
  description = "The ACL of the S3 bucket."
  type        = string
}

variable "s3_versioning" {
  description = "State of versioning for the S3 bucket (enabled/disabled)."
  type        = bool
}

variable "s3_tags" {
  description = "A mapping of tags to assign to the bucket."
  type        = map(string)
}

# VPC Variables
variable "vpc_cidr" {
  description = "The CIDR block for the VPC."
  type        = string
}

variable "public_subnet_cidr" {
  description = "The CIDR block for the public subnet."
  type        = string
}

variable "availability_zone" {
  description = "The availability zone in which to create the subnet."
  type        = string
}

# Webserver Variables
variable "ami_id" {
  description = "The AMI ID for the webserver instances."
  type        = string
}

variable "instance_type" {
  description = "The type of instance to start for the webserver."
  type        = string
}

variable "min_size" {
  description = "The minimum size of the webserver Auto Scaling group."
  type        = number
}

variable "max_size" {
  description = "The maximum size of the webserver Auto Scaling group."
  type        = number
}

# Load Balancer Variables
variable "http_port" {
  description = "The port the load balancer listens on."
  type        = number
}
