variable "region" {
  description = "The AWS region to create resources in."
  type        = string
  default     = "eu-central-1"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "The CIDR block for the public subnet."
  type        = string
  default     = "10.0.1.0/24"
}

variable "availability_zone" {
  description = "Availability zone for the subnet"
  type        = string
  default     = "eu-central-1"
}

# Variables for webserver module
variable "ami_id" {
  description = "The AMI ID to use for the instances."
  type        = string
}

variable "instance_type" {
  description = "The type of instance to start."
  type        = string
  default     = "t2.micro"
}

variable "min_size" {
  description = "The minimum size of the Auto Scaling Group."
  type        = number
}

variable "max_size" {
  description = "The maximum size of the Auto Scaling Group."
  type        = number
}

variable "desired_capacity" {
  description = "The desired size of the Auto Scaling Group."
  type        = number
}

# Variables for loadbalancer module
variable "alb_security_group_id" {
  description = "The ID of the security group for the ALB"
  type        = string
}

variable "subnet_ids" {
  description = "A list of subnet IDs for the ALB"
  type        = list(string)
}

variable "vpc_id" {
  description = "The VPC ID where the resources will be created"
  type        = string
}
