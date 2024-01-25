variable "environment" {
  description = "The environment the load balancer is being created in (e.g., dev, staging, prod)."
  type        = string
}

variable "http_port" {
  description = "The port the load balancer listens on."
  type        = number
}

variable "vpc_id" {
  description = "The ID of the VPC in which to create the load balancer."
  type        = string
}

variable "subnet_ids" {
  description = "A list of subnet IDs to attach to the Load Balancer."
  type        = list(string)
}

variable "alb_security_group_ids" {
  description = "A list of security group IDs to attach to the Load Balancer."
  type        = list(string)
}
