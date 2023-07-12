# Resource `tos_subnet`

The `tos_subnet` Resource manages Subnet Network Objects in Tufin SA.

## Usage

```terraform
resource "tos_subnet" "milkyway" {
  domain = var.domain
  app    = var.app

  name    = "MILKYWAY_1"
  ip      = "1.2.3.0/28"
  comment = "Test Subnet MILKYWAY 1 .. Created by Terraform Provider TOS"
  tags    = merge(
    var.default_tags,
    {
      network_object_SA = format("%s", "MILKYWAY_1")
    })
}
```

## Argument Reference

* `domain` - (Required) The Domain Name.
* `app` - (Required) The Application Name.
* `name` - (Required) The Subnet Name.
* `ip` - (Required) The Subnet CIDR.
* `comment` - (Required) The Range Comment.
* `tags` - (Optional) Resource Tags; see [Tags](tag.md) for details.

## Attribute Reference

In addition to all arguments above, the following attributes are exported:

* `id` - The Subnet Id.

### Example

```terraform
resource "tos_subnet" "milkyway" {
  app     = "Cloud"
  comment = "Test Subnet MILKYWAY 1 .. Created by Terraform Provider TOS"
  domain  = "scs0"
  id      = "23583"
  ip      = "1.2.3.0/28"
  name    = "MILKYWAY_1"
  tags    = {
    "description"       = "Terraform Provider TOS Showcase Network Objects"
    "env"               = "Tufin@me"
    "network_object_SA" = "MILKYWAY_1"
    "origin"            = "provider-tufin-tos"
    "project"           = "Terraform Provider TOS"
    "version"           = "1.0.0"
  }
}
```


## Import

The `tos_subnet` Resources are imported using the identifier `id,domain,app`.

### Example

```terraform
terraform import module.networkobjects.tos_subnet.subnet_1 19147,scs0,Cloud
```
