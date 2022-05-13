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
  sc_url = "<sc url>"
  st_url = "<sc url>"
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
  tba_url = "<tba url>"
  mode    = "tba"
}
```

