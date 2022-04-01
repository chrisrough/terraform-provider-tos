---
page_title: "Setup"
---

# Setup

To install this provider, copy and paste this code into your Terraform configuration. Then, run terraform init.

```terraform
terraform {
  required_providers {
    tos = {
      source  = "chrisrough/tos"
      version = "1.0.8"
    }
  }
}

provider "tos" {
  # Configuration options
}
```
