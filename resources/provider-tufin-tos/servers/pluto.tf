resource "tufin_server" "pluto_1" {
  domain = var.domain
  app    = var.app

  name           = "PLUTO_1"
  group_id       = 1
  ip             = "4.3.2.1"
  security_level = ""
  comment        = "Test Server PLUTO 1 .. Created by Tufin Terraform Provider"
  tags = merge(
    var.default_tags,
    {
      network_object_SA = format("%s", "PLUTO_1")
    })
}
output "pluto_1" {
  value = tufin_server.pluto_1
}

data "tufin_servers" "pluto_1_name" {
  name = "pluto_1"

  domain = var.domain
  app    = var.app
}

output "pluto_1_name" {
  value       = data.tufin_servers.pluto_1_name.name
  description = "servers by name, name"
}
output "pluto_1_servers" {
  value       = data.tufin_servers.pluto_1_name.servers
  description = "servers by name, servers"
}

