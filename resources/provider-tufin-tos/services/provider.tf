terraform {
  required_providers {
    tufin = {
      source  = "chrisrough/tos"
      version = "1.0.3"
    }
  }
}

provider "tufin" {
  sc_url    = "https://138.190.192.234"
  sc_user   = "tsgrure1-lab"
  sc_passwd = "tsgrure1"

  st_url    = "https://138.190.192.231"
  st_user   = "tsgrure1"
  st_passwd = "tsgrure1"
}
