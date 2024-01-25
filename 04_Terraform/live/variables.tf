variable "region" {
  description = "The AWS region to deploy resources."
  type        = string
  default     = "eu-central-1"
}

variable "environment" {
  description = "The environment (e.g., dev, staging, prod)."
  type        = string
  default     = "dev"
}

variable "s3_bucket_name" {
  description = "The name of the S3 bucket to create."
  type        = string
}

// ... déclarations pour les autres variables nécessaires pour vos modules ...

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

variable "http_port" {
  description = "The port on which the load balancer is listening."
  type        = number
}

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

// ... etc ...
