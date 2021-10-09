# Creating VPC

resource "aws_vpc" "poc_vpc" {
  cidr_block       = "${var.vpc_cidr}"
#   instance_tenancy = "default"

  tags = {
    Name = "Three-Tier VPC"
  }
}