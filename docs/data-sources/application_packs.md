# Data Source `tos_application_packs`

The `tos_application_packs` Data Source lists Application Packs from Tufin SC.

## Example Usage

```terraform
data "tos_application_packs" "application_packs_by_name" {
  customers = [
    "hpc0",
    "gshs"
  ]
  name = "App"
  // name = "pk"

  domain = var.domain
  app    = var.app
}
```

## Argument Reference

* `customers` - (Required) The List of Customers to list Application Packs from.
* `name` - (Required) The Name (Wildcard) of Application Packs to be listed.




## Attribute Reference

* `application_SC` - List attributes that this resource exports.

### Tags

* `application_SC` - The Network Object Name in SA
