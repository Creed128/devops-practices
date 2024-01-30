resource "aws_launch_configuration" "webserver_lc" {
  name_prefix   = "webserver-lc-"
  image_id      = var.ami_id
  instance_type = var.instance_type
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
