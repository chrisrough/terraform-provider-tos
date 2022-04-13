# Data Source `tos_networkobjects`

The `tos_networkobjects` Data Source lists Network Objects from Tufin SA.

## Usage

```terraform
data "tos_networkobjects" "networkobjects_by_name_host" {
  name = "DRACO"

  domain = var.domain
  app    = var.app
}
```

## Argument Reference

* `attribute_name` - (Optional/Required) List arguments this resource takes.
* `domain` - (Required) The Domain Name.
* `app` - (Required) The Application Name.

## Attribute Reference

In addition to all arguments above, the following attributes are exported:
