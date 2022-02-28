# Resource `tos_group`

The `tos_group` Resource manages Groups of Network Objects (Servers, Subnets, Ranges) in Tufin SA.

## Example Usage

```terraform
resource "tos_group" "group_1" {
  domain = var.domain
  app    = var.app

  name    = "GROUP_1"
  comment = "GROUP 1 .."

  members = [
    "MARS_1",
    "MARS_2",
    "MARS_3",
  ]

  tags = merge(
    var.default_tags,
    {
      network_object_SA = format("%s", "GROUP_1")
    })
}
```

## Argument Reference

* `attribute_name` - (Optional/Required) List arguments this resource takes.

- `tags` - (Optional) Resource Tags; see [Tags](#Tags) below for details.



## Attribute Reference

* `network_object_SA` - List attributes that this resource exports.

### Tags

- `network_object_SA` - The Network Object Name in SA
