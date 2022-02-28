resource "tufin_zone" "zone_Reto2" {
  name    = "TestZoneReto2"
  comment = "Test Zone Reto2 .. Created by Tufin Terraform Provider"

  domain = var.domain
  app    = var.app

  tags = merge(
    var.default_tags,
    {
      name_ST = format("%s", "TestZoneReto2")
    })
}

