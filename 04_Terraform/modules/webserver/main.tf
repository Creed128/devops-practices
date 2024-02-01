resource "aws_launch_configuration" "webserver_lc" {
  name_prefix   = "webserver-lc-"
  image_id      = var.ami_id
  instance_type = var.instance_type
  security_groups = [var.security_group_id]
  user_data     = file("${path.module}/user-data.sh")

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_group" "webserver_asg" {
  launch_configuration = aws_launch_configuration.webserver_lc.id
  vpc_zone_identifier  = var.subnet_ids
  min_size             = var.min_size
  max_size             = var.max_size

  tag {
    key                 = "Name"
    value               = "webserver"
    propagate_at_launch = true
  }
}

resource "aws_lb_target_group" "webserver_tg" {
  name     = "webserver-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = var.vpc_id

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    matcher             = "200-299"
    timeout             = 5
    healthy_threshold   = 5
    unhealthy_threshold = 2
  }
}

output "webserver_asg_name" {
  value = aws_autoscaling_group.webserver_asg.name
}

output "webserver_tg_arn" {
  value = aws_lb_target_group.webserver_tg.arn
}
