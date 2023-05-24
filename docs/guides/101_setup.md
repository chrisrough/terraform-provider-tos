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


## Origin Option

The http request header 'Origin' for requests send to backend (any mode) value can be set using the 'origin' option
in the provider configuration as shown below.
By default, the value 'tf' is used.


