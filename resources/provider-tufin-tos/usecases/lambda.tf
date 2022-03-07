#get Info from lambda function

# get Lambda Function
data "aws_lambda_function" "application" {
  function_name = "application-TUFIN_DEV"
}
# show lambda function
output "lambda" {
  # get all subnet ID's
  value = data.aws_lambda_function.application.vpc_config[*].subnet_ids
  #value = [for s in data.aws_lambda_function.application.vpc_config.subnet_ids : s]
}

data "aws_subnet" "example" {
  for_each = data.aws_lambda_function.application.vpc_config[0].subnet_ids
  id       = each.value
}

output "subnet_cidr_blocks" {
  value = [for s in data.aws_subnet.example : s.cidr_block]
}

resource "tos_subnet" "subnet_from_lambda" {
  for_each = data.aws_subnet.example
  domain   = var.domain
  app      = var.app
  name     = format("SUBNET_%s", each.value.id)
  group_id = 1
  ip       = each.value.cidr_block
  comment  = format("SUBNET_%s .. Created by Tufin Terraform Provider", each.value.id)
  tags     = merge(
    var.default_tags,
    {
      network_object_SA = format("SUBNET_%s .. Created by Tufin Terraform Provider", each.value.id)
    }
  )
}


