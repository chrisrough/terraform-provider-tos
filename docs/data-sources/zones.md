# Data Source `tos_zones`

The `tos_zones` Data Source lists Zones from Tufin ST.

## Usage

```terraform
data "tos_zones" "zones_by_name" {
  name = "TestZoneTF2tba_tst"

  domain = var.domain
  app    = var.app
}
```

## Argument Reference

* `attribute_name` - (Optional/Required) List arguments this resource takes.

## Attribute Reference

In addition to all arguments above, the following attributes are exported:

