terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "IAmSuperConfused"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
