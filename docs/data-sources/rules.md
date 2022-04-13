# Data Source `tos_rules`

The `tos_rules` Data Source lists Application Connections from Tufin SA.

## Usage

```terraform
data "tos_rules" "rules_by_name" {
  name = "Rule 1"

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
