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
resource "tufin_subnet" "Subnet_lambda_2" {
  domain = var.domain
  app = var.app
  name= "Sub_lambda_2"
  group_id= 1
  ip= data.aws_subnet.example[0]
  security_level = ""
  comment= "Test Subnet lambda 2 .. Created by Tufin Terraform Provider"
  tags = merge( var.default_tags, { network_object_SA = format("%s", "lambda_1") })
}
