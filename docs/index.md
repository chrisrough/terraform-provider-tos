# Terraform Provider TOS (Tufin Orchestration Suite)

Terraform Provider for Tufin Orchestration Suite with Resource Management in Secure App (SA), Secure Change (SC) and
Secure Track (ST).

Visit [Tufin](https://tufin.com) for more information on TOS.

## Introduction

### Data Sources


### Resources

[tufin_server](resources/server.md)
[tufin_rule](resources/rule.md)






## Provider Example Usage

```terraform
terraform {
  required_providers {
    tufin = {
      source  = "chrisrough/tos"
      version = "1.0.0"
    }
  }
}

provider "tufin" {
  sc_url    = "<sc url>"
  sc_user   = "<sc user>"
  sc_passwd = "<sc passwd>"

  st_url    = "<sc url>"
  st_user   = "<sc user>"
  st_passwd = "<sc passwd>"
}
```

## Argument Reference

* `sc_url` - Secure Change URL (Required)
* `sc_user` - (Required) Secure Change User (Required)
* `sc_passwd` - (Required) Secure Change Password (Required)

* `st_url` - Secure Track URL (Required)
* `st_user` - Secure Track User (Required)
* `st_passwd` - Secure Track Password (Required)
