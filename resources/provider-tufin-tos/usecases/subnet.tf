# define subnet name
variable "subnet_ora_prd_name" {
  description = "Name of subnet"
  type        = string
  default     = "subnet_ora_prd"
}
#define subnet IP address
variable "subnet_ora_prd_ip" {
  description = "ip of subnet"
  type        = string
  default     = "10.144.23.0/24"
}
# add subnet to SecureAPP
resource "tos_subnet" "subnet_ora_prd" {
  domain = var.domain
  app    = var.app
  name           = var.subnet_ora_prd_name
  group_id       = 1
  ip             = var.subnet_ora_prd_ip
  comment  = format("SUBNET .. Created by Tufin Terraform Provider")
  tags     = merge(
    var.default_tags,
    {
      network_object_SA = format("SUBNET .. Created by Tufin Terraform Provider" )
    }
  )
}
# get Zone
data "tos_zones" "zone_ora_prd" {
  name    = "iAWS-nearProd-priv"
  domain = var.domain
  app    = var.app
}
# show zone
output "zone_ora_prd" {
  value = data.tos_zones.zone_ora_prd
}
#add zone entry to SecureTrack
resource "tos_zone_entry" "zone_entry_with_zone_lookup" {
  count   = length(data.tos_zones.zone_ora_prd)
  zone_id = data.tos_zones.zone_ora_prd.zones[count.index].id
  ip      = "1.2.3.0"
  prefix  = "30"
  comment = "Test Zone Entry With Zone Lookup .. Created by Terraform Provider TOS"
  domain = var.domain
  app    = var.app
}

#output "zone_1" {
#  value = tufin_zone.zone_1
#}