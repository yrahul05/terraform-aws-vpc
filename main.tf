## Managed By : yrahul05
## Description : This Script is used to create Transfer Server, Transfer User And label .
## Copyright @ yrahul05. All Right Reserved.
module "labels" {
  source      = "git::https://github.com/yrahul05/terraform-aws-labels.git?ref=main"
  name        = var.name
  environment = var.environment
  managedby   = var.managedby
  label_order = var.label_order
  repository  = var.repository
}

##-----------------------------------------------------------------------------
## Below resources will deploy VPC and its components.
##-----------------------------------------------------------------------------
#tfsec:ignore:aws-ec2-require-vpc-flow-logs-for-all-vpcs ## Because flow log resource for vpc is defined below.


resource "aws_vpc" "default" {
  count                                = var.enable ? 1 : 0
  cidr_block                           = var.ipam_pool_enable ? false : var.cidr_block
  ipv4_ipam_pool_id                    = var.ipv4_ipam_pool_id
  ipv4_netmask_length                  = var.ipv4_netmask_length
  ipv6_cidr_block                      = var.ipv6_cidr_block
  ipv6_ipam_pool_id                    = var.ipv6_ipam_pool_id
  ipv6_netmask_length                  = var.ipv6_netmask_length
  instance_tenancy                     = var.instance_tenancy
  enable_dns_hostnames                 = var.dns_hostnames_enabled
  enable_dns_support                   = var.dns_support_enabled
  assign_generated_ipv6_cidr_block     = var.assign_generated_ipv6_cidr_block
  ipv6_cidr_block_network_border_group = var.ipv6_cidr_block_network_border_group
  enable_network_address_usage_metrics = var.enable_network_address_usage_metrics
  tags                                 = module.labels.tags
  lifecycle {
    # Ignore tags added by kubernetes
    ignore_changes = [
      tags,
      tags["kubernetes.io"],
      tags["SubnetType"],
    ]
  }
}