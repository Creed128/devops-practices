variable "subnet_ids" {
  description = "A list of subnet IDs to attach to the Load Balancer."
  type        = list(string)
}

variable "vpc_id" {
  description = "The VPC ID where the Load Balancer will be created."
}

variable "lb_security_group_id" {
  description = "The ID of the security group attached to the Load Balancer."
}
