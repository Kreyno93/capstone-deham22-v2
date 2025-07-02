resource "aws_subnet" "my_first_subnet" {
  vpc_id     = aws_vpc.my_first_vpc.id
  cidr_block = var.subnet_cidr

  tags = {
    Name = "Public Subnet 1"
  }
}
