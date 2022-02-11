resource "aws_vpc" "tfe_vpc" {
  cidr_block                       = var.cidr_block
  assign_generated_ipv6_cidr_block = false
  instance_tenancy                 = "default"
  enable_dns_support               = "true"
  enable_classiclink               = false
  enable_classiclink_dns_support   = false
  enable_dns_hostnames             = "true"


  tags = var.default_tag
}