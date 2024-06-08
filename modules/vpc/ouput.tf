output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.MyVPC.id
}

output "subnet_ids" {
  description = "The IDs of the subnets"
  value       = aws_subnet.subnets[*].id
}

output "internet_gateway_id" {
  description = "The ID of the internet gateway"
  value       = aws_internet_gateway.MyIGW.id
}