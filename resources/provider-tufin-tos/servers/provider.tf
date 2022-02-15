terraform {
  required_providers {
    tufin = {
      version = "~> 1.0.0"
      source  = "hashicorp.com/rc/tos"
    }
  }
}

provider "tufin" {
  sc_url    = "https://18.196.108.237"
  sc_user   = "r"
  sc_passwd = "P**8zeV)rrerozqg7ix>3-oC&=rHZ%3H"

  st_url    = "https://18.196.108.237"
  st_user   = "admin"
  st_passwd = "P**8zeV)rrerozqg7ix>3-oC&=rHZ%3H"
}
