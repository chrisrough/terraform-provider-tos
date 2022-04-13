# Resource `tos_ticket`

The `tos_ticket` Resource manages Tickets in Tufin SA.

## Example Usage

```terraform
resource "tos_ticket" "tix_1" {
  domain = var.domain
  app    = var.app

  subject = "test ticket 1"

  tags    = merge(
    var.default_tags,
    {
      ticket_SA = format("%s", "test ticket 1")
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
