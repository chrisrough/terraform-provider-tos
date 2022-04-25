# Resource `tos_ticket`

The `tos_ticket` Resource manages Tickets in Tufin SA.

## Usage

```terraform
resource "tos_ticket" "tix_1" {
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

* `attribute_name` - (Optional/Required) List arguments this resource takes.
* `tags` - (Optional) Resource Tags; see [Tags](tag.md) for details.

## Attribute Reference

In addition to all arguments above, the following attributes are exported:

* `id` - The Ticket Id.

### Example

```terraform
```