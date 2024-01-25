output "asg_name" {
  description = "The name of the Auto Scaling Group for the webservers."
  value       = aws_autoscaling_group.web.name
}
