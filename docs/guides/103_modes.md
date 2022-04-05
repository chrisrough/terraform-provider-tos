---
page_title: "Provider Modes"
---
The provider can be configured in two different modes with the difference of the backend to which it connects to:

* tos: Tufin Orchestration Suite (TOS).
* tba: Tufin Backend API (TBA); this mode ist not intended for public use.

# Mode tos

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

# Mode tba

```terraform
provider "tos" {
  tba_url    = "<tba url>"
  tba_user   = "<tba user>"
  tba_passwd = "<tba password>"

  mode = "tba"
}
```

## Argument Reference

* `tba_url` - Tufin Backend API URL (Required)
* `tba_user` - Tufin Backend API User (Required)
* `tba_passwd` - Tufin Backend API Password (Required)
