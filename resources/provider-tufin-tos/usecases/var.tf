variable "domain" {
  type        = string
  description = "Tufin Domain"
}

variable "app" {
  type        = string
  description = "Tufin App (within Domain)"
}
# region EU-Central-1, Frankfurt
variable "aws_region" {
  description = "sandbox.io"
  default = "eu-central-1"
}
