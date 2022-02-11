resource "aws_instance" "tfe_ec2_instance" {
  ami               = var.image_id
  instance_type     = "t2.micro"
  subnet_id         = aws_subnet.tfe_subnet.id
  key_name          = var.aws_key_pair_name
  security_groups   = [aws_security_group.ec2_access_sg.id]
  get_password_data = false


  tags = var.default_tag
}



/*
resource "aws_eip" "associate_ec2_eip" {
  instance = aws_instance.tfe_ec2_instance.id
  vpc      = true
}
*/