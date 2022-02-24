resource "tos_subet" "Subnet_mars" {
  domain         = var.domain
  app            = var.app
  name           = "SUB_MARS_11"
  group_id       = 1
  ip             = "10.10.10.0/24"
  comment        = "Test Subnet MARS 1 .. Created by Tufin Terraform Provider"
  tags           = merge( var.default_tags, { network_object_SA = format("%s", "SUB_MARS_1") })
}

