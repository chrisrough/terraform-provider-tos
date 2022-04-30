# Resource `tos_server`

The `tos_server` Resource manages Server (Host) Network Objects in Tufin SA.

## Usage

```terraform
resource "tos_server" "mars" {
  domain = var.domain
  app    = var.app

  name    = "MARS_1"
  ip      = "1.2.3.4/32"
  comment = "Test Server MARS 1 .. Created by Terraform Provider TOS (tba)"

  tags = merge(
    var.default_tags,
    {
      network_object_SA = format("%s", "MARS_1")
    })
}
```

## Argument Reference

* `domain` - (Required) The Domain Name.
* `app` - (Required) The Application Name.
* `name` - (Required) The Server Name.
* `ip` - (Required) The Server IP.
* `comment` - (Required) The Range Comment.
* `tags` - (Optional) Resource Tags; see [Tags](tag.md) for details.

## Attribute Reference

In addition to all arguments above, the following attributes are exported:

* `id` - The Server Id.

### Example

```terraform
resource "tos_server" "mars" {
  app     = "Cloud"
  comment = "Test Server MARS 1 .. Created by Terraform Provider TOS (tba)"
  domain  = "scs0"
  id      = "23582"
  ip      = "1.2.3.4/32"
  name    = "MARS_1"
  tags    = {
    "description"       = "Terraform Provider TOS Showcase Network Objects"
    "env"               = "Tufin@Swisscom"
    "network_object_SA" = "MARS_1"
    "origin"            = "provider-tufin-tba"
    "project"           = "Terraform Provider TOS"
    "version"           = "1.0.0"
  }
}
```