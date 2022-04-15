# Data Source `tos_providerinfo`

The `tos_providerinfo` Data Source shows basic Provider Informations.

## Usage

```terraform
data "tos_providerinfo" "providerinfo" {
}
```

## Argument Reference

No Arguments

## Attribute Reference

The following attributes are exported:

* `Mode` - Provider Mode
* `TBA Url` - Tufin Backend API (TBA) URL
* `TBA User` - Tufin Backend API (TBA) User
* `TOS SC Url` - Turfin Orchestration Suite (TOS) Secure Change (SC) URL
* `TOS SC User` - Turfin Orchestration Suite (TOS) Secure Change (SC) User
* `TOS ST Url` - Turfin Orchestration Suite (TOS) Secure Change (ST) URL
* `TOS SC User` - Turfin Orchestration Suite (TOS) Secure Change (ST) User
* `Title` - Provider Title
* `Version` - Provider Version

### Example Mode `tba`

```terraform
info = {
  "Mode"        = "tba"
  "TBA Url"     = "https://tufinapps-alb-1503945167.eu-central-1.elb.amazonaws.com"
  "TBA User"    = "dashboard"
  "TOS SC Url"  = ""
  "TOS SC User" = ""
  "TOS ST Url"  = ""
  "TOS ST User" = ""
  "Title"       = "Terraform Provider TOS (Tufin Orchestration Suite)"
  "Version"     = "v1.0.10"
}
```

### Example Mode `tos`

```terraform
 info = {
  "Mode"        = "tos"
  "TBA Url"     = ""
  "TBA User"    = ""
  "TOS SC Url"  = "https://18.196.108.237"
  "TOS SC User" = "r"
  "TOS ST Url"  = "https://18.196.108.237"
  "TOS ST User" = "admin"
  "Title"       = "Terraform Provider TOS (Tufin Orchestration Suite)"
  "Version"     = "v1.0.10"
}
```
