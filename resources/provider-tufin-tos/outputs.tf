# module servers
output "tufin_servers_by_name" {
  value       = module.servers.servers_by_name
  description = "server name"
}
output "tufin_servers_by_name_servers" {
  value       = module.servers.servers_by_name_servers
  description = "servers by name"
}

# module services
output "tufin_services_by_name" {
  value       = module.services.services_by_name
  description = "service name"
}
output "tufin_services_by_name_services" {
  value       = module.services.services_by_name_services
  description = "service by name"
}


