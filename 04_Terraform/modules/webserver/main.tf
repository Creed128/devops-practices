resource "aws_autoscaling_group" "web" {
  name_prefix          = "${var.environment}-webserver-"
  min_size             = var.min_size
  max_size             = var.max_size
  desired_capacity     = var.min_size
  vpc_zone_identifier  = var.subnet_ids
  launch_configuration = aws_launch_configuration.web.id

  tag {
    key                 = "Name"
    value               = "${var.environment}-webserver"
    propagate_at_launch = true
  }

  tag {
    key                 = "Environment"
    value               = var.environment
    propagate_at_launch = true
  }
}

resource "aws_launch_configuration" "web" {
  name_prefix     = "${var.environment}-webserver-"
  image_id        = var.ami_id
  instance_type   = var.instance_type
  security_groups = var.security_group_ids

  user_data = file("${path.module}/user-data.sh")

  lifecycle {
    create_before_destroy = true
  }
}
