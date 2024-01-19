variable "ami_id" {
  description = "The AMI ID to use for the instances."
  type        = string
}

variable "instance_type" {
  description = "The type of instance to start."
  type        = string
}

variable "security_group_id" {
  description = "The ID of the security group."
  type        = string
}

variable "subnet_ids" {
  description = "A list of subnet IDs to launch resources in."
  type        = list(string)
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
