# Data Source `tos_application_connections`

The `tos_application_connections` Data Source lists Application Connections from Tufin SA.

## Usage

```terraform
data "tos_application_connections" "application_connections_by_name" {
  name = "APX 1"

  domain = var.domain
  app    = var.app
}
```

## Argument Reference

* `name` - (Required) Name (Wildcard) of the Application Connections to be listed.
* `domain` - (Required) The Domain Name.
* `app` - (Required) The Application Name.

## Attribute Reference

In addition to all arguments above, the following attributes are exported.

List of matching Application Connections from Tufin SA:

* `id` - Application Connection Id.
* `name` - Application Connection Name.
* `src_servers`- Source Servers of the Application Connection with list servers each containing:
    * `id` - Server Id.
    * `name` - Server Name.
* `services`- Services of the Application Connection with list services each containing:
    * `id` - Service Id.
    * `name` - Service Name.
* `dst_servers`- Destination Servers of the Application Connection with list of servers each containing:
    * `id` - Server Id.
    * `name` - Server Name.
* `comment`- Application Connection Comment.

### Example

```terraform
application_connections = [
  {
    id          = 1690
    name        = "APX 1"
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
    comment = "APX 1 .."
  }
]
```
