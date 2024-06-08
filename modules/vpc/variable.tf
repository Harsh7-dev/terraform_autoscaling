variable "vpc_cidr" {
  description = "The CIDR block for VPC"
  type        = string
  default     = ""
}

variable "subnets_cidr" {
  description = "A list of subnet CIDR blocks"
  type        = list(string)
  default     = []
}

variable "region" {
  description = "The AWS region where the VPC will be created"
  type        = string
  default     = ""
}