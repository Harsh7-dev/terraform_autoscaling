resource "aws_launch_template" "launch_template" {
  name          = var.name
  image_id      = var.ami_id
  instance_type = var.instance_type

  user_data = filebase64("${path.module}/user-data.sh")
  network_interfaces {
    associate_public_ip_address = true
    security_groups             = var.security_group
  }
  lifecycle {
    create_before_destroy = true
  }

  tag_specifications {
    resource_type = "instance"
    tags = {
      Name = var.name
    }
  }

}