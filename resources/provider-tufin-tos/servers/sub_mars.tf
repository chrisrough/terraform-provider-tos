resource "tos_subnet" "Subnet_mars" {
  domain         = var.domain
  app            = var.app
  name           = "SUB_MARS_111"
  group_id       = 1
  ip             = "10.10.10.0/24"
  comment        = "Test Subnet MARS 111 .. Created by Tufin Terraform Provider"
  tags           = merge( var.default_tags, { network_object_SA = format("%s", "SUB_MARS_111") })
}

