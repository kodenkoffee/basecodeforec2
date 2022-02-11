resource "aws_subnet" "tfe_subnet" {
  vpc_id                          = aws_vpc.tfe_vpc.id
  cidr_block                      = var.cidr_block
  availability_zone               = data.aws_availability_zones.available.names[0]
  map_public_ip_on_launch         = true

  tags = var.default_tag
}