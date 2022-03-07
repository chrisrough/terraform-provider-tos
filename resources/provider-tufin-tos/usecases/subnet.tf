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
      network_object_SA = format("SUBNET_%s .. Created by Tufin Terraform Provider")
    }
  )
}

# get Zone
data "tos_zone" "zone_ora_prd" {
  name    = "TestZone1"
}

# show lambda function
output "zone_ora_prd" {
  value = data.tos_zone.zone_ora_prd
}

#add zone entry to SecureTrack
#resource "tos_zone_entry" "zone_ora_prd" {
#  name    = "TestZone1"
#  comment = "Test Zone 1 .. Created by Tufin Terraform Provider"
#  domain = var.domain
#  app    = var.app
#  tags = merge(
#  var.default_tags,
#  {
#    name_ST = format("%s", "TestZone1")
#  })
#}

#output "zone_1" {
#  value = tufin_zone.zone_1
#}