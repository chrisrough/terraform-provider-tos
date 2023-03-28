# Resource `tos_connection_to_application_pack`

The `tos_application` Resource manages Connections to Application Packs in Tufin SC.

## Usage

```terraform
resource "tos_connection_to_application_pack" "connection_to_application_pack1" {
  domain      = var.domain
  app         = var.app
  name        = "PACK_3"
  comment     = "PACK 3 .."
  customer    = "gshs"
  application_pack_id = 367

  network_objects_tag {
    network_objects = [
      "MARS_1",
    ]
    tag = "Internet-IP-1"
  }

  tags = merge(
    var.default_tags,
    {
      connection_to_application_pack_SA = format("%s", "PACK_2")
    })
}
```

## Argument Reference

* `domain` - (Required) The Domain Name.
* `app` - (Required) The Application Name.
* `name` - (Required) The Connection to Application Pack Name.
* `comment` - (Required) The Connection to Application Pack Comment.
* `customer` - (Required) The Connection to Application Pack Customer.
* `server_tags` - (Required) The Server Tags.
* `application_pack_id` - (Required) The Application Pack Id.
* `network_objects_tag` - (Required) The Network Objects Tag(s).
* `tags` - (Optional) Resource Tags; see [Tags](tag.md) for details.

## Attribute Reference

In addition to all arguments above, the following attributes are exported:

* `id` - The Connection to Application Pack Id.

### Example

```terraform
resource "tos_connection_to_application_pack" "connection_to_application_pack1" {
  id          = "189"
  domain      = "scs0"
  app         = "Cloud"
  name        = "PACK_2022_04_25_173500"
  comment     = "PACK 2022_04_25_173500 .."
  customer    = "gshs"
  application_pack_id = 367
  network_objects_tag {
    network_objects = [
      "MARS_1",
    ]
    tag = "Internet-IP-1"
  }

  network_objects_tag {
    network_objects = [
      "RANGE_1",
      "ASTEROIDS_1"
    ]
    tag = "Internet-IP-2"
  }

  tags = {
    "connection_to_application_pack_SA" = "PACK_2022_04_25_173500"
    "description"                       = "Terraform Provider TOS Showcase Connection to Application Packs"
    "env"                               = "Tufin@me"
    "origin"                            = "provider-tufin-tba"
    "project"                           = "Terraform Provider TOS"
    "version"                           = "1.0.0"
  }
}
```