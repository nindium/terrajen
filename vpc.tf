resource "aws_vpc" "my_vpc" {
    cidr_block = var.vpc_cidr
    instance_tenancy = var.tenancy

    tags = {
        Name = "Cloudiar-${terraform.workspace}"
    }
}

resource "aws_subnet" "public_subnet" {
    vpc_id = aws_vpc.my_vpc
    cidr_block = cidrsubnet(var.cidr_block, 8, 10)
}
