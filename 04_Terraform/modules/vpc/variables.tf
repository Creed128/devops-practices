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

# Add other variables as needed
