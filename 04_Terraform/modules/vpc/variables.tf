variable "vpc_cidr" {
  description = "CIDR block for the VPC."
}

variable "public_subnet_cidrs" {
  description = "List of CIDR blocks for the public subnets."
  type        = list(string)
}

variable "availability_zones" {
  description = "List of availability zones in the region."
  type        = list(string)
}

variable "vpc_name" {
  description = "The name of the VPC."
  default     = "mon-vpc"
}
