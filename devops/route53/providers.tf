provider "aws" {
  region = var.region
}

terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "blondinkaksu"

    workspaces {
      name = "devops-route53_blondinkaksu_com"
    }
  }
}
