output "webserver_lb_arn" {
  value = aws_lb.webserver_lb.arn
}

output "webserver_lb_dns_name" {
  value = aws_lb.webserver_lb.dns_name
}
