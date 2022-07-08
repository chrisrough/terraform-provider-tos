# Data Source `tos_service_groups`

The `tos_service_groups` Data Source lists Global Service Groups from Tufin SA.

## Usage

```terraform
data "tos_service_groups" "service_groups_by_name" {
  name = "mgmt_Storage_RLM-Mgmt"
}
```

## Argument Reference

* `name` - Name (Wildcard) of the Global Service Groups to be listed.

## Attribute Reference

In addition to all arguments above, the following attributes are exported.

List of matching Service Groups from Tufin SA:

* `id` - Service Id.
* `name` - Service Name.
* `global` - Service Global Flag.
* `type` - Service Type.
* `members` - List of Service Group Members (which are Services).
* `comment` - Service Comment.

### Example

```terraform
service_groups = [
  {
    id      = 335
    name    = "mgmt_Storage_RLM-Mgmt"
    global  = true
    type    = "group"
    members = [
      "Remote Desktop Protocol",
      "ftp",
      "http",
      "https",
      "shell",
      "smtp",
      "ssh",
    ]
    comment = "comment .."
  },
]


```

