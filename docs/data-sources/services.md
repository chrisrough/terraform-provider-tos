# Data Source `tos_services`

The `tos_services` Data Source lists Application Services from Tufin SA.

## Usage

```terraform
data "tos_services" "services_by_name" {
  name = "https"
}
```

## Argument Reference

* `name` - Name (Wildcard) of the Service to be listed.
* `domain` - (Required) The Domain Name.
* `app` - (Required) The Application Name.

## Attribute Reference

In addition to all arguments above, the following attributes are exported.

List of matching Services from Tufin SA:

* `id` - Service Id.
* `name` - Service Name.
* `comment` - Service Comment.
* `type` - Service Type.
* `global` - Service Global Flag.
* `min` - Min Port.
* `max` - Max Port.
* `protocol` - Protocol.

### Example

```terraform
services = [
  {
    id       = 85
    name     = "https"
    comment  = "HTTP protocol over TLS/SSL"
    type     = "tcp_service"
    global   = true
    min      = 443
    max      = 443
    protocol = ""
  },
] 
```

