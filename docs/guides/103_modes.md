---
page_title: "Provider Modes"
---

# Mode TOS

## Provider Usage Example

```terraform
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
* `sc_user` - Secure Change User (Required)
* `sc_passwd` - Secure Change Password (Required)

* `st_url` - Secure Track URL (Required)
* `st_user` - Secure Track User (Required)
* `st_passwd` - Secure Track Password (Required)

# Mode TOS

```terraform
provider "tos" {
  tba_url    = "https://tufinapps-alb-1503945167.eu-central-1.elb.amazonaws.com"
  tba_user   = "dashboard"
  tba_passwd = "dashboard"

  mode = "tba"
}
```

## Argument Reference

* `tba_url` - Tufin Backend API URL (Required)
* `tba_user` - Tufin Backend API User (Required)
* `tba_passwd` - Tufin Backend API Password (Required)
