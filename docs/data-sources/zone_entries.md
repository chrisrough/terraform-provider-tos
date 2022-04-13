# Data Source `tos_zone_entries`

The `tos_zone_entries` Data Source lists Zone Entries from Tufin ST.

## Usage

```terraform
data "tos_zone_entries" "zone_id" {
  zone_id = 5660

  domain = var.domain
  app    = var.app
}
```

## Argument Reference

* `attribute_name` - (Optional/Required) List arguments this resource takes.

## Attribute Reference

In addition to all arguments above, the following attributes are exported:
