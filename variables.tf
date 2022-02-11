variable "region" {
  default = "ap-south-1"
}
variable "access_key" {
  description = "the value will be pulled from terraform cloud workspace environment variable"
}

variable "secret_key" {
  description = "the value will be pulled from terraform cloud workspace environment variable"
}

variable "cidr_block" {
  default = "10.0.0.0/16"
}

variable "aws_key_pair_name" {}

variable "default_tag" {
  type = map
  default = {
    "Name"        = "tfe"
    "Environment" = "dev"
  }
}

variable "image_id" {
  default = "ami-08ee6644906ff4d6c"
}

