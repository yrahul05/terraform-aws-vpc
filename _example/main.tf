provider "aws" {
  region = "us-east-2"
}
##-----------------------------------------------------------------------------
## VPC Module Call.
##-----------------------------------------------------------------------------
module "vpc" {
  source                   = "./../"
  name                     = "test"
  environment              = "hello"
  cidr_block               = "10.0.0.0/16"
  enable_flow_log          = true # Flow logs will be stored in cloudwatch log group. Variables passed in default.
  additional_cidr_block    = ["172.3.0.0/16", "172.2.0.0/16"]
  dhcp_options_domain_name = "service.consul"
  label_order              = ["name"]
}