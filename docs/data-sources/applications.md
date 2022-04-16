# Data Source `tos_applications`

The `tos_applications` Data Source lists Applications from Tufin SC.

## Usage

```terraform
data "tos_applications" "applications_by_name" {
  name = "test"
}
```

## Argument Reference

* `name` - (Required) The Name of Applications to be listed.

## Attribute Reference

In addition to all arguments above, the following attributes are exported.

List of matching Applications from Tufin SC each containing:

* `id` - Application Id.
* `name` - Application Name.
* `comment`- Application Comment.
* `customer`- Application Customer.
* `owner`- Application Owner.
* `editors`- Application Editors.
* `viewers`- Application Viewers.

### Example

```terraform
applications = [
  {
    id       = 134
    name     = "POC2015_UseCase1.1-tsgrure1-test"
    comment  = "Test Application"
    customer = "htc0"
    owner    = "api"
    editors  = [
      "tsgrure1-test",
    ]
    viewers = [
      "taaroch0-test",
    ]
  }
]
```
