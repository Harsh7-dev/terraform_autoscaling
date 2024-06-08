provider "aws" {
  region = var.region
}

data "aws_availability_zones" "AZs" {}

resource "aws_vpc" "MyVPC" {
  cidr_block = var.vpc_cidr

  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    Name = "MyVPC"
  }
}

resource "aws_subnet" "subnets" {
  count                   = length(var.subnets_cidr)
  vpc_id                  = aws_vpc.MyVPC.id
  cidr_block              = element(var.subnets_cidr, count.index)
  availability_zone       = element(data.aws_availability_zones.AZs.names, count.index)
  map_public_ip_on_launch = true
  tags = {
    Name = "subnet_${count.index}"
  }
}

resource "aws_internet_gateway" "MyIGW" {
  vpc_id = aws_vpc.MyVPC.id
}

resource "aws_default_route_table" "mainRT" {
  default_route_table_id = aws_vpc.MyVPC.default_route_table_id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.MyIGW.id
  }
}

resource "aws_route_table_association" "subnet_association" {
  count          = length(var.subnets_cidr)
  route_table_id = aws_default_route_table.mainRT.id
  subnet_id      = element(aws_subnet.subnets[*].id, count.index)

}