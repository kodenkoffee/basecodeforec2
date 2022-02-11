terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "mydevorg"


    workspaces {
      name = "vpcexample1"
    }
  }
}
