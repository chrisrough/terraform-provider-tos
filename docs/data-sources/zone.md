# Data Source `tos_zone`

The `tos_zone` Data Source gets a Zone from Tufin ST.

## Usage

```terraform
data "tos_zone" "get_zone_by_name" {
  name = "TestZoneTF2tba"

  domain = var.domain
}

```

## Argument Reference

* `name` - Name of the Zones to be listed (by exact matching string).
* `domain` - (Required) The Domain Name.

## Attribute Reference

In addition to all arguments above, the following attributes are exported.

Matching Zone from Tufin ST each containing:

* `id` - Zone Id.
* `zone_id` - Zone Id.
* `name` - Zone Name.
* `comment` - Zone Comment.

### Example

```terraform
comment = "Test Zone TF 2 .. Created by Terraform Provider TOS (tba)"
domain  = "scs0"
id      = "6067"
name    = "TestZoneTF2tba"
zone_id = 6067
```
