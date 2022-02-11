terraform {
  required_providers {
    aws = "~>3.27"
  }

  required_version = ">=0.12.31"
}

provider "aws" {
  profile    = "outlook"
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}
