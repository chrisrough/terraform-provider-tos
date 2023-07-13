# Data Source `tos_application_packs`

The `tos_application_packs` Data Source lists Application Packs from Tufin SC.

## Usage

```terraform
data "tos_application_packs" "application_packs_by_name" {
  customers = [
    "hpc0",
    "gshs"
  ]
  name = "App"

  customer = var.customer
  app    = var.app
}
```

## Argument Reference

* `customers` - (Required) The List of Customers to list Application Packs from.
* `name` - (Required) The Name (Wildcard) of Application Packs to be listed.
* `customer` - (Required) The Customer Name.
* `app` - (Required) The Application Name.

## Attribute Reference

In addition to all arguments above, the following attributes are exported.

List of matching Application Packs from Tufin SC each containing:

* `id` - Application Pack Id.
* `name` - Application Pack Name.
* `comment`- Application Pack Comment.
* `tags` - List of Application Pack Tag Names.

### Example

```terraform
application_packs = [
  {
    id        = 367
    comment   = "Tag Comment .."
    name      = "AppPack gshs IS-Service-Incoming"
    customer  = "gshs"
    tags      = [
      "default",
      "Internet-IP-1",
      "Internet-IP-2",
    ]
  },
]
```

