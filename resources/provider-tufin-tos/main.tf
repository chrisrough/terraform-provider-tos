module "servers" {
  source = "./servers"

  domain = "Default"
  app = "3Rivers"

  default_tags = {
    project     = "Tufin Terraform Provider"
    description = "Tufin Terraform Provider Showcase"
    origin      = "provider-tufin-tos"
    version     = "1.0.0"
  }
}

module "services" {
  source = "./services"

  domain = "Default"
  app = "3Rivers"

  default_tags = {
    project     = "Tufin Terraform Provider"
    description = "Tufin Terraform Provider Showcase"
    origin      = "provider-tufin-tos"
    version     = "1.0.0"
  }
}
