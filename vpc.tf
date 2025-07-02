resource "aws_vpc" "my_first_vpc" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "myFirstVPC"
  }
}
