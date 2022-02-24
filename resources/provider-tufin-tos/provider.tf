terraform {
  required_version = ">= 1.0.0"
}

terraform {
  required_providers {
    tufin = {
      source  = "chrisrough/tos"
      version = "1.0.2"
    }
  }
}
