# module servers
output "lambda" {
  value = module.usecases.lambda
}

/*
output "tos_servers_mars_1_name" {
  value       = module.servers.mars_1_name
  description = "server name"
}
output "tos_servers_mars_1_servers" {
  value       = module.servers.mars_1_servers
  description = "servers by name"
}
output "tos_servers_pluto_1_name" {
  value       = module.servers.pluto_1_name
  description = "server name"
}
output "tos_servers_pluto_1_servers" {
  value       = module.servers.pluto_1_servers
  description = "servers by name"
}

# module services
output "tos_services_by_name" {
  value       = module.services.services_by_name
  description = "service name"
}
output "tos_services_by_name_services" {
  value       = module.services.services_by_name_services
  description = "service by name"
}
*/


