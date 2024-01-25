variable "ami_id" {
  description = "The AMI ID for the instances."
  type        = string
}

variable "instance_type" {
  description = "The type of instance to start."
  type        = string
}

variable "min_size" {
  description = "The minimum size of the Auto Scaling group."
  type        = number
}

variable "max_size" {
  description = "The maximum size of the Auto Scaling group."
  type        = number
}
