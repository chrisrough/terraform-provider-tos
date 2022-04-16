# Data Source `tos_networkobjects`

The `tos_networkobjects` Data Source lists Network Objects from Tufin SA.

## Usage

```terraform
data "tos_networkobjects" "networkobjects_by_name_host" {
  name = "DRACO"

  domain = var.domain
  app    = var.app
}
```

## Argument Reference

* `name` - (Required) The Network Object Name (Filter).
* `domain` - (Required) The Domain Name.
* `app` - (Required) The Application Name.

## Attribute Reference

In addition to all arguments above, the following attributes are exported.

List of matching Network Objects from Tufin SA distinguished by type each containing:

* `id` - Network Object Id.
* `name` - Network Object Name.
* `type`- Network Object Type; Types are:
    * `host`
    * `range`
    * `subnet`
    * `group`
* `ip`- Network Object Ip (not set for type `group`).
* `members`- Network Object Members (only set for type `group`).
* `comment`- Application Viewers.

### Example Type `host`

```terraform
networkobjects = [
  {
    id      = 19147
    name    = "DRACO2425338-0"
    type    = "host"
    ip      = "10.144.110.40/32"
    members = []
    comment = ""
  },
]
```

### Example Type `range`

```terraform
networkobjects = [
  {
    id      = 22949
    name    = "RANGE_1"
    type    = "range"
    ip      = "1.2.3.1-1.2.3.4"
    members = []
    comment = "test"
  },
]
```

### Example Type `subnet`

```terraform
networkobjects = [
  {
    id      = 22051
    name    = "SUBNET_subnet-0d60a8c45599a2fe1"
    type    = "subnet"
    ip      = "10.255.250.0/24"
    members = []
    comment = "SUBNET_subnet-0d60a8c45599a2fe1 .. Created by Tufin Terraform Provider"
  }
]
```

### Example Type `group`

```terraform
networkobjects = [
  {
    id      = 23410
    name    = "GROUP_1"
    type    = "group"
    ip      = ""
    members = [
      "MARS_1",
      "ASTEROIDS_1",
      "MILKYWAY_1",
    ],
    comment = "GROUP 1 .."
  },
]
```

