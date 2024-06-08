output "load_balancer_arn" {
  value = aws_lb.app.arn
}

output "load_balancer_dns_name" {
  value = aws_lb.app.dns_name
}
