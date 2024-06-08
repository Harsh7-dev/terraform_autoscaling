# Target Group Module
This module sets up a target group for the load balancer.

## Inputs

| Name                  | Description                       | Type   | Default |
|-----------------------|-----------------------------------|--------|---------|
| name                  | Name of the target group          | string | n/a     |
| port                  | Port for the target group         | number | n/a     |
| protocol              | Protocol for the target group     | string | n/a     |
| vpc_id                | VPC ID for the target group       | string | n/a     |
| health_check_path     | Health check path                 | string | n/a     |
| health_check_protocol | Health check protocol             | string | n/a     |

## Outputs

| Name               | Description                      |
|--------------------|----------------------------------|
| target_group_arn   | The ARN of the target group      |

## Usage

```hcl
module "target_group" {
  source                = "./modules/target_group"
  name                  = var.tg_name
  port                  = var.tg_port
  protocol              = var.tg_protocol
  vpc_id                = module.vpc.vpc_id
  health_check_path     = var.health_check_path
  health_check_protocol = var.health_check_protocol
}
