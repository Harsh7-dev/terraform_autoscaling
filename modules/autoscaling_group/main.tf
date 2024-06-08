resource "aws_autoscaling_group" "app" {
  desired_capacity = var.desired_capacity
  max_size         = var.max_size
  min_size         = var.min_size
  launch_template {
    id      = var.launch_template_id
    version = "$Latest"
  }
  vpc_zone_identifier = var.subnet_ids
  target_group_arns   = var.target_group_arns

  tag {
    key                 = "Name"
    value               = var.name
    propagate_at_launch = true
  }
}
