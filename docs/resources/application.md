# Resource `tos_application`

The `tos_application` Resource manages Applications in Tufin SC.

## Example Usage

```terraform
resource "tos_application" "application_1" {
  domain  = var.domain
  name    = "APP_1"
  comment = "APP 1 .."

  owner   = "OwnerName"
  editors = [
    "Editor X",
    "Editor Y",
  ]
  viewers = [
    "Viewer X",
    "Viewer Y",
  ]

  tags = merge(
    var.default_tags,
    {
      application_SC = format("%s", "APP_1")
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

- `application_SC` - The Application Name in SC
