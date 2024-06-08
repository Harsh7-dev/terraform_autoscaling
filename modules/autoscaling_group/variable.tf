variable "name" {
  description = "Name of the auto scaling group"
  type        = string
}

variable "desired_capacity" {
  description = "Desired capacity"
  type        = number
}

variable "max_size" {
  description = "Max size"
  type        = number
}

variable "min_size" {
  description = "Min size"
  type        = number
}

variable "launch_template_id" {
  description = "Launch template ID"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs"
  type        = list(string)
}

variable "target_group_arns" {
  description = "List of target group ARNs"
  type        = list(string)
}

