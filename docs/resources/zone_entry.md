# Resource `tos_zone_entry`

The `tos_zone_entry` Resource manages Zone Entries in Tufin ST.

## Usage

```terraform
resource "tos_zone_entry" "zone_entry_1" {
  domain = var.domain

  zone_id = tos_zone.zone_3.id
  ip      = "10.217.127.192/29"
  comment = "Test Zone Entry 1 .. Created by Terraform Provider TOS (tba)"

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
* `ip` - (Required) The Zone Entry Ip.
* `comment` - (Required) The Range Comment.
* `tags` - (Optional) Resource Tags; see [Tags](tag.md) for details.

## Attribute Reference

In addition to all arguments above, the following attributes are exported:

* `id` - The Zone Entry Id.

### Example

```terraform
resource "tos_zone_entry" "zone_entry_1" {
  id      = "181827"
  domain  = "scs0"
  comment = "Test Zone Entry 1 .. Created by Terraform Provider TOS (tba)"
  ip      = "10.217.127.192/29"
  tags    = {
    "description" = "Terraform Provider TOS Showcase Zones+Zone Entries"
    "env"         = "Tufin@Swisscom"
    "name_ST"     = "Test Zone Entry 1"
    "origin"      = "provider-tufin-tba"
    "project"     = "Terraform Provider TOS"
    "version"     = "1.0.0"
  }
  zone_id = 5865
}
```