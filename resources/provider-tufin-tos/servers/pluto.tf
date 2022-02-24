resource "tos_server" "pluto_1" {
  domain = var.domain
  app    = var.app

  name           = "PLUTO_11"
  group_id       = 1
  ip             = "4.3.2.11"
  comment        = "Test Server PLUTO 11 .. Created by Tufin Terraform Provider"
  tags = merge(
    var.default_tags,
    {
      network_object_SA = format("Name = %s", "PLUTO_1")
    })
}
output "pluto_1" {
  value = tos_server.pluto_1
}

data "tos_servers" "pluto_1_name" {
  name = "pluto_1"

  domain = var.domain
  app    = var.app
}

output "pluto_1_name" {
  value       = data.tos_networkobjects.pluto_1_name.name
  description = "servers by name, name"
}
output "pluto_1_servers" {
  value       = data.tos_networkobjects.pluto_1_name.networkobjects
  description = "servers by name, servers"
}

