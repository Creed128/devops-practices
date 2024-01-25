output "s3_bucket_id" {
  description = "The ID of the S3 bucket."
  value       = module.s3_bucket.bucket_id
}

output "vpc_id" {
  description = "The ID of the VPC."
  value       = module.vpc.vpc_id
}

output "public_subnet_id" {
  description = "The ID of the public subnet."
  value       = module.vpc.public_subnet_id
}

output "webserver_asg_name" {
  description = "The name of the Auto Scaling Group for the webservers."
  value       = module.webserver.asg_name
}

output "loadbalancer_dns_name" {
  description = "The DNS name of the Load Balancer."
  value       = module.lb_module.lb_dns_name
}
