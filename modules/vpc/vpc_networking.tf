resource "aws_vpc" "mero_vpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = var.tenancy

  tags = {
    Name = "mero_vpc"
  }
}

resource "aws_subnet" "mero_subnet" {
  vpc_id     = "var.vpc_id"
  cidr_block = "var.subnet_cidr"

  tags = {
    Name = "mero_subnet"
  }
}

output "vpc_id" {
value = aws_vpc.mero_vpc.id

}

output "subnet_id" {
value = aws_subnet.mero_subnet.id
}
