# Terraform Provider TOS (Tufin Orchestration Suite)

Terraform Provider for Tufin Orchestration Suite (TOS) with Resource Management in Secure App (SA), Secure Change (SC) and
Secure Track (ST).

Visit [Tufin](https://tufin.com) for more information on TOS.

## Overview

### Data Sources

[tos_networkobjects](data-sources/networkobjects.md)

[tos_rules](data-sources/rules.md)

[tos_services](data-sources/services.md)

[tos_zones](data-sources/zones.md)

[tos_zone_entries](data-sources/zone_entries.md)


### Resources

[tos_server](resources/server.md)

[tos_subnet](resources/subnet.md)

[tos_range](resources/range.md)

[tos_rule](resources/rule.md)

[tos_ticket](resources/ticket.md)

[tos_zone](resources/zone.md)

[tos_zone_entry](resources/zone_entry.md)


## Provider Usage Example

```terraform
terraform {
  required_providers {
    tufin = {
      source  = "chrisrough/tos"
      version = "1.0.4"
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
