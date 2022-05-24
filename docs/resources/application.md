# Resource `tos_application`

The `tos_application` Resource manages Applications in Tufin SC.

## Usage

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
* `name` - (Required) The Application Name.
* `comment` - (Required) The Application Comment.
* `owner` - (Required) The Application Owner.
* `editors` - (Required) The Application Editors.
* `viewers` - (Required) The Application Viewer.
* `tags` - (Optional) Resource Tags; see [Tags](tag.md) for details.

## Attribute Reference

In addition to all arguments above, the following attributes are exported:

* `id` - The Application Id.
* `domain` - The Application Domain (Customer).

### Example

```terraform
resource "tos_application" "application_1" {
  id      = "1114"
  domain  = "scs0"
  name    = "TestApp2"
  comment = "Test App 2 .."
  owner   = "taaroch0"
  editors = [
    "taacued2",
    "taaroch0",
  ]
  viewers = [
    "tsgrure1",
  ]
  tags = {
    "application_SC" = "Test App 2"
    "description"    = "Terraform Provider TOS Showcase Applications"
    "env"            = "Tufin@me"
    "origin"         = "provider-tufin-tba"
    "project"        = "Terraform Provider TOS"
    "version"        = "1.0.0"
  }
}
```
