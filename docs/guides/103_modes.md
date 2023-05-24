---
page_title: "Provider Modes"
---
The provider can be configured in several modes with the difference of the backend to which it connects to:

* tos: Tufin Orchestration Suite (TOS).
* tos_rc: Tufin Orchestration Suite (TOS); this mode ist not intended for public use.

# Mode tos

## Provider Usage Example

```terraform
provider "tufin" {
  sc_url    = "<sc url>"
  st_url    = "<sc url>"
}
```

## Argument Reference

* `sc_url` - Secure Change URL (Required)
* `st_url` - Secure Track URL (Required)
