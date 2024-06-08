
### Security Group Module
This module creates security groups for controlling inbound and outbound traffic.

## Inputs

| Name                | Description                         | Type   | Default       |
|---------------------|-------------------------------------|--------|---------------|
| name                | Name of the security group          | string | n/a           |
| description         | Description of the security group   | string | n/a           |
| vpc_id              | VPC ID for the security group       | string | n/a           |
| ingress_from_port   | Ingress from port                   | number | n/a           |
| ingress_to_port     | Ingress to port                     | number | n/a           |
| ingress_protocol    | Ingress protocol                    | string | n/a           |
| ingress_cidr_blocks | Ingress CIDR blocks                 | list   | n/a           |

## Outputs

| Name             | Description                |
|------------------|----------------------------|
| security_group_id | The ID of the security group |

## Usage

```hcl
module "security_group" {
  source              = "./modules/security_group"
  name                = var.sg_name
  description         = var.sg_description
  vpc_id              = module.vpc.vpc_id
  ingress_from_port   = var.sg_ingress_from_port
  ingress_to_port     = var.sg_ingress_to_port
  ingress_protocol    = var.sg_ingress_protocol
  ingress_cidr_blocks = var.sg_ingress_cidr_blocks
}
