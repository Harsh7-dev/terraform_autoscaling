variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidrs" {
  description = "List of subnet CIDR blocks"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24", "10.0.4.0/24"]
}

variable "lt_name" {
  description = "Launch template name"
  type        = string
  default     = "MyWebServer"
}

variable "ami_id" {
  description = "AMI ID for the instances"
  type        = string
  default     = "ami-00beae93a2d981137"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "tg_name" {
  description = "Target group name"
  type        = string
  default     = "TG-MyWebServer"
}

variable "tg_port" {
  description = "Target group port"
  type        = number
  default     = 80
}

variable "tg_protocol" {
  description = "Target group protocol"
  type        = string
  default     = "HTTP"
}

variable "health_check_path" {
  description = "Health check path"
  type        = string
  default     = "/"
}

variable "health_check_protocol" {
  description = "Health check protocol"
  type        = string
  default     = "HTTP"
}

variable "lb_name" {
  description = "Load balancer name"
  type        = string
  default     = "ALB-MyWebServer"
}


variable "lb_port" {
  description = "Load balancer listener port"
  type        = number
  default     = 80
}

variable "lb_protocol" {
  description = "Load balancer listener protocol"
  type        = string
  default     = "HTTP"
}

variable "asg_name" {
  description = "Auto scaling group name"
  type        = string
  default     = "ASG-MyWebServer"
}

variable "desired_capacity" {
  description = "Desired capacity for the auto scaling group"
  type        = number
  default     = 2
}

variable "max_size" {
  description = "Maximum size for the auto scaling group"
  type        = number
  default     = 4
}

variable "min_size" {
  description = "Minimum size for the auto scaling group"
  type        = number
  default     = 2
}

variable "sg_name_asg" {
  description = "Security group name for ASG"
  type        = string
  default     = "MyWebServer-SG"
}

variable "sg_description_asg" {
  description = "Security group description"
  type        = string
  default     = "Allows HTPP traffic"
}

variable "sg_ingress_from_port_asg" {
  description = "Ingress from port"
  type        = number
  default     = 80
}

variable "sg_ingress_to_port_asg" {
  description = "Ingress to port"
  type        = number
  default     = 80
}

variable "sg_ingress_protocol_asg" {
  description = "Ingress protocol"
  type        = string
  default     = "tcp"
}

variable "sg_ingress_cidr_blocks_asg" {
  description = "Ingress CIDR blocks"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}



variable "sg_name_alb" {
  description = "Security group name for ALB"
  type        = string
  default     = "ALB-SG"
}

variable "sg_description_alb" {
  description = "Security group description"
  type        = string
  default     = "Security group for ALB"
}

variable "sg_ingress_from_port_alb" {
  description = "Ingress from port"
  type        = number
  default     = 80
}

variable "sg_ingress_to_port_alb" {
  description = "Ingress to port"
  type        = number
  default     = 80
}

variable "sg_ingress_protocol_alb" {
  description = "Ingress protocol"
  type        = string
  default     = "tcp"
}

variable "sg_ingress_cidr_blocks_alb" {
  description = "Ingress CIDR blocks"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}