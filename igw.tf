resource "aws_internet_gateway" "tfe_igw" {
  vpc_id = aws_vpc.tfe_vpc.id

  tags = var.default_tag
}