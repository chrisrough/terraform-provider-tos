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

data "aws_subnet" "lambda_sub_1" {
    string = data.aws_lambda_function.application.vpc_config[0].subnet_ids
}

output "lambda_sub_1" {
  # get all subnet ID's
  value = data.aws_subnet.lambda_sub_1.cidr_block
  description = " Subnet 1 from lambda function "
  #value = [for s in data.aws_lambda_function.application.vpc_config.subnet_ids : s]
}
# Create lambda IP Range at tufin
#resource "tufin_subnet" "Subnet_lambda" {
#  domain = var.domain
#  app = var.app
#  name= "Sub_lambda"
#  group_id= 1
#  ip= "10.10.10.0/24"
#  security_level = ""
#  comment= "Test Subnet lambda 1 .. Created by Tufin Terraform Provider"
#  tags = merge( var.default_tags, { network_object_SA = format("%s", "lambda_1") })
#}
