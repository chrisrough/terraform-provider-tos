data "tos_services" "services_by_name" {
  name = "https"
}

output "services_by_name" {
  value       = data.tos_services.services_by_name.name
  description = "services by name, name"
}
output "services_by_name_services" {
  value       = data.tos_services.services_by_name.services
  description = "services by name, services"
}

