resource "aws_vpc" "my_vpc" {
    cidr_block = var.vpc_cidr
    instance_tenancy = var.tenancy

    tags = {
        Name = "Cloudiar-${terraform.workspace}"
    }
}

resource "aws_subnet" "public_subnet" {
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = cidrsubnet(var.vpc_cidr, 8, 10)
    tags = {
        Name = "Public Subnet - ${terraform.workspace}"
    }
}
