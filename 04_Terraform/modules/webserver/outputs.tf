output "webserver_asg_name" {
  description = "The name of the Auto Scaling Group created for webservers."
  value       = aws_autoscaling_group.webserver_asg.name
}

output "webserver_asg_id" {
  description = "The ID of the Auto Scaling Group created for webservers."
  value       = aws_autoscaling_group.webserver_asg.id
}

output "webserver_lc_id" {
  description = "The ID of the launch configuration associated with the Auto Scaling Group."
  value       = aws_launch_configuration.webserver_lc.id
}
