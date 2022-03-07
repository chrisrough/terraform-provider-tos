# define subnet name
variable "subnet_ora_pre_name" {
  description = "Name of subnet"
  type        = string
  default     = "subnet_ora_pre"
}
#define subnet IP address
variable "subnet_ora_pre_ip" {
  description = "ip of subnet"
  type        = string
  default     = "10.144.24.0/24"
}
# add subnet to SecureAPP
resource "tos_subnet" "subnet_ora_pre" {
  domain = var.domain
  app    = var.app
  name           = var.subnet_ora_pre_name
  group_id       = 1
  ip             = var.subnet_ora_pre_ip
  comment  = format("SUBNET .. Created by Tufin Terraform Provider")
  tags     = merge(
    var.default_tags,
    {
      network_object_SA = format("SUBNET .. Created by Tufin Terraform Provider" )
    }
  )
}
# add subnet to Group
resource "tos_group" "group_1" {
  domain = var.domain
  app    = var.app

  name    = "GROUP_1"
  comment = "GROUP 1 .."

  members = [
    tos_subnet.subnet_ora_prd.name
  ]
  tags = merge(
    var.default_tags,
    {
      network_object_SA = format("%s", "GROUP_1")
    })
}