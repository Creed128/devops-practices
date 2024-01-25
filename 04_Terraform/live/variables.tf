variable "region" {
  description = "The AWS region to deploy resources."
  type        = string
}

variable "environment" {
  description = "The deployment environment (e.g., dev, staging, prod)."
  type        = string
}

# Variables for S3 module
variable "s3_bucket_name" {
  description = "The name of the S3 bucket."
  type        = string
}

variable "s3_bucket_acl" {
  description = "The ACL of the S3 bucket."
  type        = string
}

variable "s3_versioning" {
  description = "State of versioning for the S3 bucket."
  type        = bool
}

variable "s3_tags" {
  description = "A mapping of tags to assign to the bucket."
  type        = map(string)
}

# Variables for VPC module
variable "vpc_cidr" {
  description = "CIDR for the VPC."
  type        = string
}

variable "public_subnet_cidr" {
  description = "CIDR for the public subnet."
  type        = string
}

variable "availability_zone" {
  description = "Availability zone for the subnet"
  type        = string
}

# Variables for Webserver module
variable "ami_id" {
  description = "AMI ID for the webserver instances."
  type        = string
}

variable "instance_type" {
  description = "Instance type for the webserver instances."
  type        = string
}

variable "min_size" {
  description = "Minimum size of the Auto Scaling group."
  type        = number
}

variable "max_size" {
  description = "Maximum size of the Auto Scaling group."
  type        = number
}

# Variables for Load Balancer module
variable "http_port" {
  description = "The port the load balancer listens on."
  type        = number
}
