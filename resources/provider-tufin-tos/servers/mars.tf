resource "tos_server" "mars_1" {
  domain = var.domain
  app    = var.app

  name           = "MARS_11"
  group_id       = 1
  ip             = "1.2.3.41"
  comment        = "Test Server MARS 11 .. Created by Tufin Terraform Provider"
  tags = merge(
    var.default_tags,
    {
      network_object_SA = format("%s", "MARS_11")
    })
}
output "mars_1" {
  value = tos_server.mars_1
}

data "tos_servers" "mars_1_name" {
  name = "MARS_1"

  domain = var.domain
  app    = var.app
}

output "mars_1_name" {
  value       = data.tos_servers.mars_1_name.name
  description = "servers by name, name"
}
output "mars_1_servers" {
  value       = data.tos_servers.mars_1_name.servers
  description = "servers by name, servers"
}
