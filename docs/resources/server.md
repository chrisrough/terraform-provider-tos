# Resource `tos_server`

The `tos_server` Resource manages Server (Host) Network Objects in Tufin SA.

## Example Usage

```terraform
resource "tos_server" "pluto_1" {
  domain = var.domain
  app    = var.app

  name           = "PLUTO_1"
  group_id       = 1
  ip             = "4.3.2.1"
  comment        = "Test Server PLUTO 1 .. Created by Tufin Terraform Provider"
  tags = merge(
  var.default_tags,
  {
    network_object_SA = format("%s", "PLUTO_1")
  })
}
```

## Argument Reference

* `attribute_name` - (Optional/Required) List arguments this resource takes.
* `tags` - (Optional) Resource Tags; see [Tags](#Tags) below for details.

## Attribute Reference

* `network_object_SA` - List attributes that this resource exports.

### Tags

- `network_object_SA` - The Network Object Name in SA
