 
provider "aws" {
  region = var.vpc-region
}

resource "aws_vpc" "vpc1" {
  cidr_block       = var.vpc-cidr
  tags = {
    Name = var.vpc-name
  }
}

