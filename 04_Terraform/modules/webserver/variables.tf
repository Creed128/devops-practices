variable "ami_id" {
  description = "The AMI ID to use for the web servers."
}

variable "instance_type" {
  description = "The instance type to use for the web servers."
  default     = "t2.micro"
}

variable "subnet_ids" {
  description = "A list of subnet IDs to launch resources in."
  type        = list(string)
}

variable "min_size" {
  description = "Minimum size of the Auto Scaling Group."
}

variable "max_size" {
  description = "Maximum size of the Auto Scaling Group."
}

variable "security_group_id" {
  description = "The ID of the security group."
}

variable "vpc_id" {
  description = "The VPC ID where the resources will be created."
}
