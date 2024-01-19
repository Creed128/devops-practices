resource "aws_launch_configuration" "webserver_lc" {
  name          = "webserver-lc"
  image_id      = var.ami_id
  instance_type = var.instance_type
  user_data     = file("${path.module}/user-data.sh")

  security_groups = [var.security_group_id]

  lifecycle {
    create_before_destroy = true
  }
}
