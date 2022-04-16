# Data Source `tos_zone_entries`

The `tos_zone_entries` Data Source lists Zone Entries from Tufin ST.

## Usage

```terraform
data "tos_zone_entries" "zone_id" {
  zone_id   = 5660
  zone_name = "Cloud-ora-opn_dco"

  domain = var.domain
  app    = var.app
}
```

## Argument Reference

* `id` - Id of the Zone for which the Zone Entries to be listed.
* `name` - Name of the Zone for which the Zone Entries to be listed.
* `domain` - (Required) The Domain Name.
* `app` - (Required) The Application Name.

Either `id` or `name` must be set (id has precedence over name if both are specified).

## Attribute Reference

In addition to all arguments above, the following attributes are exported.

List of matching Zone Entries from Tufin ST each containing:

* `id` - Zone Entry Id
* `zone_id` - Zone Id
* `ip` - Ip
* `netmask` - Netmask
* `prefix` - Prefix
* `comment` - Zone Comment

### Example

```terraform
zone_entries = [
  {
    id      = 181813
    zone_id = 5847
    ip      = "10.217.127.192"
    netmask = "255.255.255.248"
    prefix  = "29"
    comment = "Created by Tufin Backend API - do not modify"
  }
]
```
