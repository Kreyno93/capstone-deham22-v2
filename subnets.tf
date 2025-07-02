resource "aws_subnet" "my_first_subnet" {
  vpc_id     = aws_vpc.my_first_vpc.id
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "Public Subnet 1"
  }
}
