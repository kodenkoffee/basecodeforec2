resource "aws_security_group" "tfe_vpc_sg" {
  vpc_id = aws_vpc.tfe_vpc.id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    description = "egress proxy to allow connection to internet"
  }

  ingress {
    protocol    = "-1"
    from_port   = 0
    to_port     = 0
    self        = true
    description = "default sg configurations"
  }


  tags = merge(map("Name", "tfe_vpc_sg"), var.default_tag)
}

resource "aws_security_group" "ec2_access_sg" {
  vpc_id = aws_vpc.tfe_vpc.id

  ingress {
    description = "allow anyone to connect through 22"
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 22
    protocol    = "tcp"
    to_port     = 22
  }

  egress {
    description = "egress defines tile for outgoing traffic and we have allow all "
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  tags = merge(map("Name", "Ec2 SG"), var.default_tag)
}