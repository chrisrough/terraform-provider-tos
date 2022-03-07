# Data Source `tos_tickets`

The `tos_tickets` Data Source lists Tickets from Tufin SA.

## Example Usage

```terraform
resource "tos_ticket" "ticket_1" {
  domain = var.domain
  app    = var.app

  subject = "test ticket 1"

  tags = merge(
    var.default_tags,
    {
      ticket_SA = format("%s", "test ticket 1")
    })
}
```

## Argument Reference

* `domain` - (Required) The Domain Name.
* `app` - (Required) The Application Name.
* `attribute_name` - (Optional/Required) List arguments this resource takes.

- `tags` - (Optional) Resource Tags; see [Tags](#Tags) below for details.



## Attribute Reference

* `network_object_SA` - List attributes that this resource exports.

### Tags

- `network_object_SA` - The Network Object Name in SA
