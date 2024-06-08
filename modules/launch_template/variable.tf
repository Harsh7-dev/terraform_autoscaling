variable "name" {
  description = "Name of the launch template"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for the launch template"
  type        = string
}

variable "instance_type" {
  description = "Instance type"
  type        = string
}
variable "security_group" {
  description = "List of security groups"
  type        = list(string)
}
