# Resource `tos_host`

The `tos_host` Resource manages Host Network Objects in Tufin SA.

## Usage

```terraform
resource "tos_host" "mars" {
  domain = var.domain
  app    = var.app

  name    = "MARS_1"
  ip      = "1.2.3.4/32"
  comment = "Test Host MARS 1 .. Created by Terraform Provider TOS"

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
* `name` - (Required) The Host Name.
* `ip` - (Required) The Host IP.
* `comment` - (Required) The Range Comment.
* `tags` - (Optional) Resource Tags; see [Tags](tag.md) for details.

## Attribute Reference

In addition to all arguments above, the following attributes are exported:

* `id` - The Host Id.

### Example

```terraform
resource "tos_host" "mars" {
  app     = "Cloud"
  comment = "Test Host MARS 1 .. Created by Terraform Provider TOS"
  domain  = "scs0"
  id      = "23582"
  ip      = "1.2.3.4/32"
  name    = "MARS_1"
  tags    = {
    "description"       = "Terraform Provider TOS Showcase Network Objects"
    "env"               = "Tufin@me"
    "network_object_SA" = "MARS_1"
    "origin"            = "provider-tufin-tba"
    "project"           = "Terraform Provider TOS"
    "version"           = "1.0.0"
  }
}
```

## Import

The `tos_host` Resources are imported using the identifier `id,domain,app`.

### Example

```terraform
terraform import module.networkobjects.tos_host.host_1 19147,scs0,Cloud
```
