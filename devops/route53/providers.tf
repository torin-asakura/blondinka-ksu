provider "aws" {
  region = var.region
}

terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "blondinkaksu"

    workspaces {
      name = "prod"
    }
  }
}
