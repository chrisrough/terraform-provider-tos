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

* `name` - (Required) Name (Wildcard) of the Application Connections to be listed.
* `domain` - (Required) The Domain Name.
* `app` - (Required) The Application Name.

## Attribute Reference

In addition to all arguments above, the following attributes are exported:

* `id` - Application Connection Id
* `name` - Application Connection Name
* `src_servers`- Source Servers of the Application Connection with list servers each containing:
    * `id` - Server Id
    * `name` - Server Name
* `services`- Services of the Application Connection with list services each containing:
    * `id` - Service Id
    * `name` - Service Name
* `dst_servers`- Destination Servers of the Application Connection with list of servers each containing:
    * `id` - Server Id
    * `name` - Server Name
* `comment`- Application Connection Comment

### Example

```terraform
rules = [
  {
    id          = 1690
    name        = "Rule 1"
    src_servers = [
      {
        id   = 23440
        name = "MARS_1"
      },
      {
        id   = 23441
        name = "ASTEROIDS_1"
      },
    ]
    services = [
      {
        id   = 83
        name = "http"
      },
      {
        id   = 85
        name = "https"
      },
    ]
    dst_servers = [
      {
        id   = 23442
        name = "MILKYWAY_1"
      },
    ]
    comment = "Rule 1 .."
  }
]
```
