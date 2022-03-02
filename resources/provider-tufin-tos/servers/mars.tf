resource "tos_server" "mars_2" {
   domain = var.domain
   app    = var.app
   name           = "MARS_2"
   group_id       = 1
   ip             = "1.2.3.41/32"
   comment        = "Test Server MARS 2 .. Created by Tufin Terraform Provider"
   tags = merge(
    var.default_tags,
     {
       network_object_SA = format("%s", "MARS_2")
     })
 }
 output "mars_2" {
   value = tos_server.mars_2
 }

 data "tos_networkobjects" "mars_2_name" {
   name = "MARS_2"

   domain = var.domain
   app    = var.app
 }

 output "mars_2_name" {
   value       = data.tos_networkobjects.mars_2_name.name
   description = "servers by name, name"
}
