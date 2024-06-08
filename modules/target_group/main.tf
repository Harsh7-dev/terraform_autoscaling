resource "aws_lb_target_group" "target_group" {

  name     = var.name
  port     = var.port
  protocol = var.protocol
  vpc_id   = var.vpc_id

  health_check {
    interval            = 30
    path                = var.health_check_path
    protocol            = var.health_check_protocol
    timeout             = 5
    healthy_threshold   = 3
    unhealthy_threshold = 3
  }

}