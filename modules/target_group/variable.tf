variable "name" {
  description = "Name of the target group"
  type        = string
  default     = ""
}

variable "port" {
  description = "Port for the target group"
  type        = number
  default     = 0
}

variable "protocol" {
  description = "Protocol for the target group"
  type        = string
  default     = ""
}

variable "vpc_id" {
  description = "VPC ID for the target group"
  type        = string
  default     = ""
}

variable "health_check_path" {
  description = "Health check path"
  type        = string
  default     = ""
}

variable "health_check_protocol" {
  description = "Health check protocol"
  type        = string
  default     = ""
}
