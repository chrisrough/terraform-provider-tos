terraform {
  required_providers {
    tos = {
      source  = "chrisrough/tos"
      version = "1.0.3"
    }
        aws = {
      source  = "hashicorp/aws"
      version = "~> 4.2.0"
    }
  }
  required_version = ">= 0.14.9"
}

# aws region
provider "aws" {
  region = var.aws_region
}

provider "tos" {
  sc_url    = "https://138.190.192.234"
  sc_user   = "tsgrure1-lab"
  sc_passwd = "tsgrure1"

  st_url    = "https://138.190.192.231"
  st_user   = "tsgrure1"
  st_passwd = "tsgrure1"
}
