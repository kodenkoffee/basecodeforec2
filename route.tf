resource "aws_route_table" "tfe_vpc_rt" {
  vpc_id = aws_vpc.tfe_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.tfe_igw.id
  }

  tags = var.default_tag
}

resource "aws_route_table_association" "associate_subnet_rt" {
  subnet_id      = aws_subnet.tfe_subnet.id
  route_table_id = aws_route_table.tfe_vpc_rt.id
}