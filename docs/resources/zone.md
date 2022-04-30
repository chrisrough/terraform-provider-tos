# Resource `tos_zone`

The `tos_zone` Resource manages Zones in Tufin ST.

## Usage

```terraform
resource "tos_zone" "zone_1" {
  domain = var.domain
  app    = var.app

  name    = "TestZoneTF1tba"
  comment = "Test Zone TF 1 .. Created by Terraform Provider TOS (tba)"

  tags = merge(
    var.default_tags,
    {
      name_ST = format("%s", "TestZoneTF1tba")
    })
}
```

## Argument Reference

* `domain` - (Required) The Domain Name.
* `app` - (Required) The Application Name.
* `name` - (Required) The Range Name.
* `comment` - (Required) The Range Comment.
* `tags` - (Optional) Resource Tags; see [Tags](tag.md) for details.

## Attribute Reference

In addition to all arguments above, the following attributes are exported:

* `id` - The Zone Id.

### Example

```terraform
resource "tos_zone" "zone_1" {
  id      = "5866"
  app     = "Cloud"
  comment = "Test Zone TF 1 .. Created by Terraform Provider TOS (tba)"
  domain  = "scs0"
  name    = "TestZoneTF1tba"
  tags    = {
    "description" = "Terraform Provider TOS Showcase Zones+Zone Entries"
    "env"         = "Tufin@Swisscom"
    "name_ST"     = "TestZoneTF1tba"
    "origin"      = "provider-tufin-tba"
    "project"     = "Terraform Provider TOS"
    "version"     = "1.0.0"
  }
}
```