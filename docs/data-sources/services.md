# Data Source `tos_services`

The `tos_services` Data Source lists Global Services from Tufin SA.

## Usage

```terraform
data "tos_services" "services_by_name" {
  name = "https"
}
```

## Argument Reference

* `name` - Name (Wildcard) of the Global Services to be listed.

## Attribute Reference

In addition to all arguments above, the following attributes are exported.

List of matching Services from Tufin SA:

* `id` - Service Id.
* `name` - Service Name.
* `global` - Service Global Flag.
* `type` - Service Type.
* `protocol` - Protocol.
* `min` - Min Port.
* `max` - Max Port.
* `comment` - Service Comment.

### Example

```terraform
services = [
  {
    id       = 85
    name     = "https"
    global   = true
    type     = "tcp_service"
    protocol = ""
    min      = 443
    max      = 443
    comment  = "HTTP protocol over TLS/SSL"
  },
] 
```

