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

# Add other variables as needed
