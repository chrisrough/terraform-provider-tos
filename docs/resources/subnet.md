# Resource `tos_subnet`

The `tos_subnet` Resource manages Subnet Network Objects in Tufin SA.

## Usage

```terraform
resource "tos_subnet" "pluto_1" {
  domain = var.domain
  app    = var.app

  name           = "PLUTO_1"
  group_id       = 1
  ip             = "4.3.2.0/29"
  comment        = "Test Subnet PLUTO 1 .. Created by Tufin Terraform Provider"
  tags = merge(
  var.default_tags,
  {
    network_object_SA = format("%s", "PLUTO_1")
  })
}
```

## Argument Reference

* `attribute_name` - (Optional/Required) List arguments this resource takes.
* `tags` - (Optional) Resource Tags; see [Tags](tag.md) for details.


## Attribute Reference

In addition to all arguments above, the following attributes are exported:

* `id` - The Subnet Id.
