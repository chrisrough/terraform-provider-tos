---
page_title: "Setup"
---

# Setup

To install this provider, copy and paste this code into your Terraform configuration. Then, run terraform init.

## Mode tos

```terraform
terraform {
  required_providers {
    tos = {
      source  = "chrisrough/tos"
      version = "~> 1.0.0"
    }
  }
}

provider "tos" {
  sc_url    = "<sc url>"
  sc_user   = "<sc user>"
  sc_passwd = "<sc passwd>"

  st_url    = "<sc url>"
  st_user   = "<sc user>"
  st_passwd = "<sc passwd>"
}
```

## Mode tba

```terraform
terraform {
  required_providers {
    tos = {
      source  = "chrisrough/tos"
      version = "~> 1.0.0"
    }
  }
}

provider "tos" {
  tba_url    = "<tba url>"
  tba_user   = "<tba user>"
  tba_passwd = "<tba password>"

  mode = "tba"
}
```

