# Resource `tos_zone_entry`

The `tos_zone_entry` Resource manages Zone Entries in Tufin ST.

## Usage

```terraform
resource "tos_zone_entry" "zone_entry_1" {
  domain = var.domain

  zone_id   = tos_zone.zone_3.id
  zone_name = tos_zone.zone_3.name

  ip                = "10.217.127.192/29"
  connected_domains = [
    "domain1",
    "domain2",
  ]
  comment = "Test Zone Entry 1 .. Created by Terraform Provider TOS"

  tags = merge(
    var.default_tags,
    {
      name_ST = format("%s", "Test Zone Entry 1")
    })
}
```

## Argument Reference

* `domain` - (Required) The Domain Name.
* `zone_id` - (Required) The Zone Id.
* `zone_name` - (Required) The Zone Name.
* `ip` - (Required) The Zone Entry Ip.
* `connected_domains` - (Optional) The Connected Domains related to this Zone Entry; only valid in Mode 'tba'.
* `comment` - (Required) The Range Comment.
* `tags` - (Optional) Resource Tags; see [Tags](tag.md) for details.

Either `zone_id` or `zone_name` must be set (but not both).

## Attribute Reference

In addition to all arguments above, the following attributes are exported:

* `id` - The Zone Entry Id.

### Example

```terraform
resource "tos_zone_entry" "zone_entry_1" {
  id      = "181827"
  domain  = "scs0"
  comment = "Test Zone Entry 1 .. Created by Terraform Provider TOS"
  ip      = "10.217.127.192/29"
  tags    = {
    "description" = "Terraform Provider TOS Showcase Zones+Zone Entries"
    "env"         = "Tufin@me"
    "name_ST"     = "Test Zone Entry 1"
    "origin"      = "provider-tufin-tba"
    "project"     = "Terraform Provider TOS"
    "version"     = "1.0.0"
  }
  zone_id = 5865
}
```

## Import

The `tos_zone_entry` Resources are imported using the identifier `*|id,zoneId,domain`.
When `*` is specified as id (denoting the Zone Entry Id), all Zone Entries of the Zone are imported.

### Example

```terraform
terraform import module.zones.tos_zone_entry.zone_entry_import 176657,3946,scs0
terraform import module.zones.tos_zone_entry.zone_entry_import *,3946,scs0
```
