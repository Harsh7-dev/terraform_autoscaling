variable "name" {
  description = "Name of the load balancer"
  type        = string
}

variable "security_groups" {
  description = "List of security groups"
  type        = list(string)
}

variable "subnet_ids" {
  description = "List of subnet IDs"
  type        = list(string)
}

variable "port" {
  description = "Port for the load balancer listener"
  type        = number
}

variable "protocol" {
  description = "Protocol for the load balancer listener"
  type        = string
}

variable "target_group_arn" {
  description = "Target group ARN"
  type        = string
}


