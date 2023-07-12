# Resource `tos_ticket`

The `tos_ticket` Resource manages Tickets in Tufin SA.

## Usage

```terraform
resource "tos_ticket" "tix_1" {
  domain = var.domain
  app    = "TestApp2"

  subject  = "Test Ticket 1"
  workflow = "Default"

  tags = merge(
    var.default_tags,
    {
      ticket_SA = format("%s", "Test Ticket 1")
    })
}
```

## Argument Reference

* `domain` - (Required) The Domain Name.
* `app` - (Required) The Application Name.
* `subject` - (Required) The Ticket Subject.
* `workflow` - (Required) The Ticket Workflow.
* `tags` - (Optional) Resource Tags; see [Tags](tag.md) for details.

## Attribute Reference

In addition to all arguments above, the following attributes are exported:

* `id` - The Ticket Id.

### Example

```terraform
resource "tos_ticket" "tix_1" {
  id     = "123"
  domain = var.domain
  app    = "TestApp2"

  subject  = "Test Ticket 1"
  workflow = "Default"

  tags = {
    "description" = "Terraform Provider TOS Showcase Tickets"
    "env"         = "Tufin@me"
    "ticket_SA"   = "Test Ticket 1"
    "origin"      = "provider-tufin-tos"
    "project"     = "Terraform Provider TOS"
    "version"     = "1.0.0"
  }
}
```