module "servers" {
  source = "./servers"

  domain = "scs0"
  app    = "Cloud"

  default_tags = {
    project     = "Tufin Terraform Provider"
    description = "Tufin Terraform Provider Showcase"
    origin      = "provider-tufin-tos"
    version     = "1.0.2"
  }
}

module "services" {
  source = "./services"

  domain = "scs0"
  app    = "Cloud"

  default_tags = {
    project     = "Tufin Terraform Provider"
    description = "Tufin Terraform Provider Showcase"
    origin      = "provider-tufin-tos"
    version     = "1.0.2"
  }
}

module "usecases" {
  source = "./usecases"

  domain = "scs0"
  app    = "Cloud"

  default_tags = {
    project     = "Tufin Terraform Provider"
    description = "Tufin Terraform Provider Showcase"
    origin      = "provider-tufin-tos"
    version     = "1.0.2"
  }
}
