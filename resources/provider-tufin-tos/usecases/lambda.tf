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


# Create lambda IP Range at tufin
#resource "tos_subnet" "Subnet_lambda_2" {
#  domain = var.domain
 # app = var.app
 # name= "Sub_lambda_2"
#  group_id= 1
#  ip= data.aws_subnet.example[0]
#  security_level = ""
#  comment= "Test Subnet lambda 2 .. Created by Tufin Terraform Provider"
 # tags = merge( var.default_tags, { network_object_SA = format("%s", "lambda_1") })
#}
resource "tos_subnet" "subnet_from_lambda" {
  count = length(data.aws_subnet.example)

  domain   = var.domain
  app      = var.app
  name     = format("SUBNET_%s", (count.index + 1))
  group_id = 1
  # ip       = data.aws_subnet.example[count.index]
  ip = "1.1.1.1/24"
  comment  = format("SUBNET_%s .. Created by Tufin Terraform Provider", (count.index + 1))
  tags     = merge(
    var.default_tags,
    {
      network_object_SA = format("SUBNET_%s .. Created by Tufin Terraform Provider", (count.index + 1))
    }
  )
}