# Resource `tos_range`

The `tos_range` Resource manages Range Network Objects in Tufin SA.

## Usage

```terraform
resource "tos_range" "asteroids" {
  domain = var.domain
  app    = var.app

  name     = "ASTEROIDS_1"
  first_ip = "1.2.3.1"
  last_ip  = "1.2.3.5"
  comment  = "Test Range ASTEROIDS 1 .. Created by Terraform Provider TOS"
  tags     = merge(
    var.default_tags,
    {
      network_object_SA = format("%s", "ASTEROIDS_1")
    })
}
```

## Argument Reference

* `domain` - (Required) The Domain Name.
* `app` - (Required) The Application Name.
* `name` - (Required) The Range Name.
* `first_ip` - (Required) The first IP in the Range.
* `last_ip` - (Required) The last IP in the Range.
* `comment` - (Required) The Range Comment.
* `tags` - (Optional) Resource Tags; see [Tags](tag.md) for details.

## Attribute Reference

In addition to all arguments above, the following attributes are exported:

* `id` - The Range Id.

### Example

```terraform
resource "tos_range" "asteroids" {
  id       = "23581"
  domain   = "scs0"
  app      = "Cloud"
  name     = "ASTEROIDS_1"
  comment  = "Test Range ASTEROIDS 1 .. Created by Terraform Provider TOS"
  first_ip = "1.2.3.1"
  last_ip  = "1.2.3.5"
  tags     = {
    "description"       = "Terraform Provider TOS Showcase Network Objects"
    "env"               = "Tufin@me"
    "network_object_SA" = "ASTEROIDS_1"
    "origin"            = "provider-tufin-tos"
    "project"           = "Terraform Provider TOS"
    "version"           = "1.0.0"
  }
}
```


## Import

The `tos_range` Resources are imported using the identifier `id,domain,app`.

### Example

```terraform
terraform import module.networkobjects.tos_range.range_1 19147,scs0,Cloud
```
