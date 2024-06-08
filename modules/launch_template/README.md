# Launch Template Module
This module creates a launch template for EC2 instances.

## Inputs

| Name            | Description                       | Type   | Default |
|-----------------|-----------------------------------|--------|---------|
| name            | Name of the launch template       | string | n/a     |
| ami_id          | AMI ID for the launch template    | string | n/a     |
| instance_type   | Instance type                     | string | n/a     |
| security_groups | List of security group IDs        | list   | n/a     |

## Outputs

| Name                 | Description                       |
|----------------------|-----------------------------------|
| launch_template_id   | The ID of the launch template     |

## Usage

```hcl
module "launch_template" {
  source           = "./modules/launch_template"
  name             = var.lt_name
  ami_id           = var.ami_id
  instance_type    = var.instance_type
  security_groups  = [module.security_group.security_group_id]
}
