module "vpc" {
  source   = "./modules/vpc"
  region   = var.region
  vpc_cidr = var.vpc_cidr
  subnets_cidr = var.subnet_cidrs
}

module "autoscaling_group_sg" {
  source              = "./modules/security_group"
  name                = var.sg_name_asg
  description         = var.sg_description_asg
  vpc_id              = module.vpc.vpc_id
  ingress_from_port   = var.sg_ingress_from_port_asg
  ingress_to_port     = var.sg_ingress_to_port_asg
  ingress_protocol    = var.sg_ingress_protocol_asg
  ingress_cidr_blocks = var.sg_ingress_cidr_blocks_asg
}

module "secuirty_group_alb" {
  source              = "./modules/security_group"
  name                = var.sg_name_alb
  description         = var.sg_description_alb
  vpc_id              = module.vpc.vpc_id
  ingress_from_port   = var.sg_ingress_from_port_alb
  ingress_to_port     = var.sg_ingress_to_port_alb
  ingress_protocol    = var.sg_ingress_protocol_alb
  ingress_cidr_blocks = var.sg_ingress_cidr_blocks_alb

}

module "launch_template" {
  source         = "./modules/launch_template"
  name           = var.lt_name
  ami_id         = var.ami_id
  instance_type  = var.instance_type
  security_group = [module.autoscaling_group_sg.security_groups_id]
}

module "target_group" {
  source                = "./modules/target_group"
  name                  = var.tg_name
  port                  = var.tg_port
  protocol              = var.tg_protocol
  vpc_id                = module.vpc.vpc_id
  health_check_path     = var.health_check_path
  health_check_protocol = var.health_check_protocol

}
module "autoscaling_group" {
  source             = "./modules/autoscaling_group"
  name               = var.asg_name
  desired_capacity   = var.desired_capacity
  max_size           = var.max_size
  min_size           = var.min_size
  launch_template_id = module.launch_template.launch_template_id
  subnet_ids         = module.vpc.subnet_ids
  target_group_arns  = [module.target_group.target_group_arn]

}

module "load_balancer" {
  source           = "./modules/load_balancer"
  name             = var.lb_name
  security_groups  = [module.secuirty_group_alb.security_groups_id]
  subnet_ids       = module.vpc.subnet_ids
  port             = var.lb_port
  protocol         = var.lb_protocol
  target_group_arn = module.target_group.target_group_arn

}
