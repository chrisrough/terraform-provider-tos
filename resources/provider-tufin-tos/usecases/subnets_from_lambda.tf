resource "tos_subnet" "subnet_from_lambda" {
  count = length(data.aws_subnet.example)

  domain   = var.domain
  app      = var.app
  name     = format("SUBNET_%s", (count.index + 1))
  group_id = 1
  ip       = data.aws_subnet.example[count.index]
  comment  = format("SUBNET_%s .. Created by Tufin Terraform Provider", (count.index + 1))
  tags     = merge(
    var.default_tags,
    {
      network_object_SA = format("SUBNET_%s .. Created by Tufin Terraform Provider", (count.index + 1))
    }
  )
}


