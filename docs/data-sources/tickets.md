# Data Source `tos_tickets`

The `tos_tickets` Data Source lists Tickets from Tufin SA.

## Usage

```terraform
data "tos_tickets" "tickets_by_subject" {
  subject = "Test Ticket 1"
}

data "tos_tickets" "tickets_by_requester" {
  requester = "tsgampa1"
}
```

## Argument Reference

* `domain` - (Required) The Domain Name.
* `app` - (Required) The Application Name.
* `attribute_name` - (Optional/Required) List arguments this resource takes.

## Attribute Reference

In addition to all arguments above, the following attributes are exported:
