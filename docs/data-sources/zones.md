# Data Source `tos_zones`

The `tos_zones` Data Source lists Zones from Tufin ST.

## Usage

```terraform
data "tos_zones" "zones_by_name" {
  name = "Cloud-ora-opn_dco"

  domain = var.domain
}
```

## Argument Reference

* `name` - Name (Wildcard) of the Zones to be listed.
* `domain` - (Required) The Domain Name.

## Attribute Reference

In addition to all arguments above, the following attributes are exported.

List of matching Zones from Tufin ST each containing:

* `id` - Zone Id.
* `name` - Zone Name.
* `comment` - Zone Comment.

### Example

```terraform
zones = [
  {
    id      = 5847
    name    = "Cloud-ora-opn_dco"
    comment = "Cloud-ora-opn_dco comment .."
  },
]
```
