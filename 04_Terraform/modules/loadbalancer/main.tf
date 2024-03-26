resource "aws_lb" "webserver_lb" {
  name               = "webserver-lb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [var.lb_security_group_id]
  subnets            = var.subnet_ids
  enable_deletion_protection = false
}

resource "aws_lb_listener" "webserver_listener" {
  load_balancer_arn = aws_lb.webserver_lb.arn
  port              = 80
  protocol          = "HTTP"
  default_action {
    type             = "forward"
    target_group_arn = var.target_group_arn
  }
}

output "webserver_lb_arn" {
  value = aws_lb.webserver_lb.arn
}

output "webserver_lb_dns_name" {
  value = aws_lb.webserver_lb.dns_name
}
