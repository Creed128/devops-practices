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
  type        = number
}

variable "max_size" {
  description = "Maximum size of the Auto Scaling Group."
  type        = number
}
