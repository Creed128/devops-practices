variable "subnet_ids" {
  description = "A list of subnet IDs to attach to the Load Balancer."
  type        = list(string)
}

variable "lb_security_group_id" {
  description = "The ID of the security group attached to the Load Balancer."
}

variable "target_group_arn" {
  description = "The ARN of the target group to associate with the load balancer."
}
variable "vpc_id" {
  description = "The VPC ID where the Load Balancer will be created."
  type        = string
}

