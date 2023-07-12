# Resource `tos_application_connection`

The `tos_application_connection` Resource manages Application Connections in Tufin SA.

## Usage

```terraform
resource "tos_application_connection" "application_connection_1" {
  domain = var.domain
  app    = var.app

  name    = "Application_Connection_1"
  comment = "Application Connection 1 .."

  src_srv_ids = [
    data.tos_networkobjects.rule_src_servers.networkobjects[0].id,
    data.tos_networkobjects.rule_src_servers2.networkobjects[0].id
  ]

  svc_ids = [
    data.tos_services.rule_services.services[0].id,
    data.tos_services.rule_services2.services[0].id
  ]

  dst_srv_ids = [
    data.tos_networkobjects.rule_dst_servers.networkobjects[0].id
  ]

  tags = merge(
    var.default_tags,
    {
      Application_Connection_SA = format("%s", "Application Connection 1")
    })
}
```

## Argument Reference

* `domain` - (Required) The Domain Name.
* `app` - (Required) The Application Name.
* `name` - (Required) The Rule Name.
* `comment` - (Required) The Rule Comment.
* `src_srv_ids` - (Required) The Rule's Source Server Ids.
* `svc_ids` - (Required) The Rule's Service Server Ids.
* `dst_srv_ids` - (Required) Rule's Destination Server Ids.
* `tags` - (Optional) Resource Tags; see [Tags](tag.md) for details.

## Attribute Reference

In addition to all arguments above, the following attributes are exported:

* `id` - The Rule Id.

### Example

```terraform
resource "tos_application_connection" "application_connection_1" {
  id      = "1707"
  domain      = "scs0"
  app     = "Cloud"
  
  name    = "Application_Connection_1"
  comment = "Application_Connection 1 .."

  src_srv_ids = [
    23581,
    23582,
  ]
  svc_ids = [
    83,
    85,
  ]
  dst_srv_ids = [
    23583,
  ]
  tags = {
    "description" = "Terraform Provider TOS Showcase Application Connections"
    "env"         = "Tufin@me"
    "origin"      = "provider-tufin-tos"
    "project"     = "Terraform Provider TOS"
    "rule_SA"     = "Rule 1"
    "version"     = "1.0.0"
  }
}
```


## Import

The `tos_rule` Resources are imported using the identifier `id,domain,app`.

### Example

```terraform
terraform import module.networkobjects.tos_rule.rule_1 19147,scs0,Cloud
```
