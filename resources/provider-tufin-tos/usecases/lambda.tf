#get Info from lambda function

resource "tufin_subnet" "Subnet_lambda" {
  domain = var.domain
  app = var.app
  name= "Sub_lambda"
  group_id= 1
  ip= "10.10.10.0/24"
  security_level = ""
  comment= "Test Subnet lambda 1 .. Created by Tufin Terraform Provider"
  tags = merge( var.default_tags, { network_object_SA = format("%s", "lambda_1") })
}
