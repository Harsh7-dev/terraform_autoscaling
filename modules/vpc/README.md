# VPC Module
This module creates a custom VPC with subnets, an internet gateway, and route tables.

## Inputs

| Name         | Description                         | Type   | Default       |
|--------------|-------------------------------------|--------|---------------|
| vpc_cidr     | The CIDR block for the VPC          | string |     n/a       |
| subnet_cidrs | A list of subnet CIDR blocks        | list   |     n/a       |
| region       | The AWS region where the VPC is created | string | n/a       |

## Outputs

| Name                | Description                  |
|---------------------|------------------------------|
| vpc_id              | The ID of the VPC            |
| subnet_ids          | The IDs of the subnets       |
| internet_gateway_id | The ID of the internet gateway |

## Usage

```hcl
module "vpc" {
  source       = "./modules/vpc"
  vpc_cidr     = var.vpc_cidr
  subnet_cidrs = var.subnet_cidrs
  region       = var.region
}
