# Load Balancer Module
This module creates an application load balancer and related resources.

## Inputs

| Name              | Description                          | Type   | Default |
|-------------------|--------------------------------------|--------|---------|
| name              | Name of the load balancer            | string | n/a     |
| security_groups   | List of security group IDs           | list   | n/a     |
| subnet_ids        | List of subnet IDs                   | list   | n/a     |
| port              | Port for the load balancer listener  | number | n/a     |
| protocol          | Protocol for the load balancer       | string | n/a     |
| target_group_arn  | Target group ARN                     | string | n/a     |

## Outputs

| Name                   | Description                       |
|------------------------|-----------------------------------|
| load_balancer_arn      | The ARN of the load balancer      |
| load_balancer_dns_name | The DNS name of the load balancer |

## Usage

```hcl
module "load_balancer" {
  source            = "./modules/load_balancer"
  name              = var.lb_name
  security_groups   = [module.security_group.security_group_id]
  subnet_ids        = module.vpc.subnet_ids
  port              = var.lb_port
  protocol          = var.lb_protocol
  target_group_arn  = module.target_group.target_group_arn
}
