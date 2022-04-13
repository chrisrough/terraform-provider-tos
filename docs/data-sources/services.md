# Data Source `tos_services`

The `tos_services` Data Source lists Application Services from Tufin SA.

## Usage

```terraform
data "tos_services" "services_by_name" {
  name = "https"
}
```

## Argument Reference

* `attribute_name` - (Optional/Required) List arguments this resource takes.
* `domain` - (Required) The Domain Name.
* `app` - (Required) The Application Name.

## Attribute Reference

In addition to all arguments above, the following attributes are exported:
