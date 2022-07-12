# Resource `tos_zone`

The `tos_zone` Resource manages Zones in Tufin ST.

## Usage

```terraform
resource "tos_zone" "zone_1" {
  domain = var.domain

  name    = "TestZoneTF1tba"
  comment = "Test Zone TF 1 .. Created by Terraform Provider TOS"
  
  shared    = true
  import_to = ["hpc0", "hpc1", "hpc3"]

  tags = merge(
    var.default_tags,
    {
      name_ST = format("%s", "TestZoneTF1tba")
    })
}
```

## Argument Reference

* `domain` - (Required) The Domain Name.
* `name` - (Required) The Range Name.
* `comment` - (Required) The Range Comment.
* `shared` - (Optional) The Shared Zone Flag.
* `import_to` - (Optional) List of Domains to import the Zone into (if Shared Flag is True).
* `tags` - (Optional) Resource Tags; see [Tags](tag.md) for details.

## Attribute Reference

In addition to all arguments above, the following attributes are exported:

* `id` - The Zone Id.

### Example

```terraform
resource "tos_zone" "zone_1" {
  id      = "5866"
  domain  = "scs0"
  comment = "Test Zone TF 1 .. Created by Terraform Provider TOS"
  name    = "TestZoneTF1tba"
  tags    = {
    "description" = "Terraform Provider TOS Showcase Zones+Zone Entries"
    "env"         = "Tufin@me"
    "name_ST"     = "TestZoneTF1tba"
    "origin"      = "provider-tufin-tba"
    "project"     = "Terraform Provider TOS"
    "version"     = "1.0.0"
  }
}
```

## Import

The `tos_zone` Resources are imported using the identifier `id,domain`.

### Example

```terraform
terraform import module.zones.tos_zone.zone_import 3946, scs0
```
