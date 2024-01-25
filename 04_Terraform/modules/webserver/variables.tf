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

variable "subnet_ids" {
  description = "A list of subnet IDs to attach to the Auto Scaling group."
  type        = list(string)
}

variable "security_group_ids" {
  description = "A list of security group IDs to attach to the instances."
  type        = list(string)
}

variable "environment" {
  description = "The environment name (e.g., 'dev', 'prod')."
  type        = string
}
