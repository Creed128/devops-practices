variable "vpc_cidr" {
  description = "CIDR block for the VPC."
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet."
}

variable "availability_zone" {
  description = "The availability zone to deploy into."
}
