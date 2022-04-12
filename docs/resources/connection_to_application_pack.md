# Resource `tos_connection_to_application_pack`

The `tos_application` Resource manages Connections to Application Packs in Tufin SC.

## Example Usage

```terraform
resource "tos_connection_to_application_pack" "connection_to_application_pack1" {
  domain = var.domain
  app    = var.app

  name    = "PACK_3"
  comment = "PACK 3 .."

  customer    = "gshs"
  server_tags = [
    "Internet-IP-1",
    "Internet-IP-2",
  ]
  application_pack_id = 367
  servers             = [
    "MARS_1",
    "RANGE_1"
  ]

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
* `tags` - (Optional) Resource Tags; see [Tags](#Tags) below for details.



## Attribute Reference

In addition to all arguments above, the following attributes are exported:

* `id` - The ID of the created Group.


### Tags

- `application_SC` - The Application Name in SC
