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

* `domain` - (Required) The Domain Name.
* `app` - (Required) The Application Name.
* `tags` - (Optional) Resource Tags; see [Tags](#Tags) below for details.



## Attribute Reference

In addition to all arguments above, the following attributes are exported:

* `id` - The ID of the created Group.


### Tags

- `network_object_SA` - The Network Object Name in SA
