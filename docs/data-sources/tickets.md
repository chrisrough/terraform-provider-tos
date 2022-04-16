# Data Source `tos_tickets`

The `tos_tickets` Data Source lists Tickets from Tufin SA.

## Usage

```terraform
data "tos_tickets" "tickets_by_subject" {
  subject   = "Test Ticket 1"
  requester = "tsgampa1"
}
```

## Argument Reference

* `subject` - (Optional) The Ticket Subject.
* `requester` - (Optional) The Ticket Requester.

Either `subject` or `requester` must be set (or both).

## Attribute Reference

In addition to all arguments above, the following attributes are exported.

List of matching Tickets from Tufin SC each containing:

* `id` - Ticket Id
* `subject` - Ticket Subject
* `requester` - Ticket Requester
* `priority` - Ticket Priority
* `status` - Ticket Status
* `workflow_name` - Ticket Workflow Name
* `date_created` - Ticket Date Created
* `date_last_update` - Ticket Date Last Updated
* `date_closed` - Ticket Date Closed

### Example

```terraform
tickets = [
  {
    id               = 4205
    subject          = "Test Ticket 1"
    requester        = "dashboard"
    priority         = "Normal"
    status           = "Ticket Rejected"
    workflow_name    = "Default"
    date_created     = "2022-03-29T11:07:50.373+02:00"
    date_last_update = "2022-03-29T11:11:19.756+02:00"
    date_closed      = "2022-03-29T11:11:19.756+02:00"
  }
]
```