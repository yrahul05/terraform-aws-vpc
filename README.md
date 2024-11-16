# Terraform Infrastructure as Code (IaC) - AWS Vpc Module

## Table of Contents
- [Introduction](#introduction)
- [Usage](#usage)
- [Module Inputs](#module-inputs)
- [Module Outputs](#module-outputs)
- [Authors](#authors)
- [License](#license)

## Introduction
This Terraform module creates structured vpc for AWS resources with specific attributes.

## Usage

- Use the module by referencing its source and providing the required variables.

```hcl
module "vpc" {
  source                              = "git::https://github.com/yrahul05/terraform-aws-vpc.git?ref=v1.0.0"
  name                                = "app"
  environment                         = "test"
  cidr_block                          = "10.0.0.0/16"
  enable_flow_log                     = true # Flow logs will be stored in cloudwatch log group. Variables passed in default.
  create_flow_log_cloudwatch_iam_role = true
  additional_cidr_block               = ["172.3.0.0/16", "172.2.0.0/16"]
  dhcp_options_domain_name            = "service.consul"
  dhcp_options_domain_name_servers    = ["127.0.0.1", "10.10.0.2"]
}
```
Please ensure you specify the correct 'source' path for the module.


# Examples
For detailed examples on how to use this module, please refer to the [Example](https://github.com/yrahul05/terraform-aws-vpc/tree/main/_example) directory within this repository.

## Authors
Your Name
Replace '[License Name]' and '[Your Name]' with the appropriate license and your information. Feel free to expand this README with additional details or usage instructions as needed for your specific use case.

## License
This project is licensed under the MIT License - see the [LICENSE](https://github.com/yrahul05/terraform-aws-vpc/blob/main/LICENSE) file for details.


sed
Check that executables have shebangs.................(no files to check)Skipp
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.4 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.32.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 5.32.1 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_labels"></a> [labels](#module\_labels) | git::https://github.com/yrahul05/terraform-aws-labels.git | v1.0.0  |

## Resources

| Name | Type |
|------|------|
| [aws_vpc.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assign_generated_ipv6_cidr_block"></a> [assign\_generated\_ipv6\_cidr\_block](#input\_assign\_generated\_ipv6\_cidr\_block) | n/a | `string` | `null` | no |
| <a name="input_cidr_block"></a> [cidr\_block](#input\_cidr\_block) | CIDR for the VPC. | `string` | `""` | no |
| <a name="input_dns_hostnames_enabled"></a> [dns\_hostnames\_enabled](#input\_dns\_hostnames\_enabled) | A boolean flag to enable/disable DNS hostnames in the VPC. | `bool` | `false` | no |
| <a name="input_dns_support_enabled"></a> [dns\_support\_enabled](#input\_dns\_support\_enabled) | A boolean flag to enable/disable DNS support in the VPC. | `bool` | `false` | no |
| <a name="input_enable"></a> [enable](#input\_enable) | Flag to control the vpc creation. | `bool` | `true` | no |
| <a name="input_enable_network_address_usage_metrics"></a> [enable\_network\_address\_usage\_metrics](#input\_enable\_network\_address\_usage\_metrics) | n/a | `string` | `null` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment (e.g. `prod`, `dev`, `staging`). | `string` | `"hello"` | no |
| <a name="input_instance_tenancy"></a> [instance\_tenancy](#input\_instance\_tenancy) | A tenancy option for instances launched into the VPC. | `string` | `"default"` | no |
| <a name="input_ipam_pool_enable"></a> [ipam\_pool\_enable](#input\_ipam\_pool\_enable) | n/a | `string` | `false` | no |
| <a name="input_ipv4_ipam_pool_id"></a> [ipv4\_ipam\_pool\_id](#input\_ipv4\_ipam\_pool\_id) | The ID of an IPv4 IPAM pool you want to use for allocating this VPC's CIDR. | `string` | `""` | no |
| <a name="input_ipv4_netmask_length"></a> [ipv4\_netmask\_length](#input\_ipv4\_netmask\_length) | The netmask length of the IPv4 CIDR you want to allocate to this VPC. Requires specifying a ipv4\_ipam\_pool\_id | `string` | `null` | no |
| <a name="input_ipv6_cidr_block"></a> [ipv6\_cidr\_block](#input\_ipv6\_cidr\_block) | IPv6 CIDR for the VPC. | `string` | `null` | no |
| <a name="input_ipv6_cidr_block_network_border_group"></a> [ipv6\_cidr\_block\_network\_border\_group](#input\_ipv6\_cidr\_block\_network\_border\_group) | n/a | `string` | `null` | no |
| <a name="input_ipv6_ipam_pool_id"></a> [ipv6\_ipam\_pool\_id](#input\_ipv6\_ipam\_pool\_id) | The ID of an IPv6 IPAM pool you want to use for allocating this VPC's CIDR. | `string` | `null` | no |
| <a name="input_ipv6_netmask_length"></a> [ipv6\_netmask\_length](#input\_ipv6\_netmask\_length) | The netmask length of the IPv4 CIDR you want to allocate to this VPC. Requires specifying a ipv6\_ipam\_pool\_id | `string` | `null` | no |
| <a name="input_label_order"></a> [label\_order](#input\_label\_order) | Label order, e.g. `name`,`application`. | `list(any)` | <pre>[<br>  "name",<br>  "environment"<br>]</pre> | no |
| <a name="input_managedby"></a> [managedby](#input\_managedby) | ManagedBy, eg 'yrahul05' | `string` | `"yrahul05"` | no |
| <a name="input_name"></a> [name](#input\_name) | Name  (e.g. `app` or `cluster`). | `string` | `""` | no |
| <a name="input_repository"></a> [repository](#input\_repository) | Terraform current module repo | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the VPC. |
| <a name="output_ipv6_cidr_block"></a> [ipv6\_cidr\_block](#output\_ipv6\_cidr\_block) | The IPv6 CIDR block. |
| <a name="output_ipv6_cidr_block_network_border_group"></a> [ipv6\_cidr\_block\_network\_border\_group](#output\_ipv6\_cidr\_block\_network\_border\_group) | The IPv6 Network Border Group Zone name |
| <a name="output_tags"></a> [tags](#output\_tags) | A mapping of tags to assign to the resource. |
| <a name="output_vpc_cidr_block"></a> [vpc\_cidr\_block](#output\_vpc\_cidr\_block) | The CIDR block of the VPC. |
| <a name="output_vpc_default_network_acl_id"></a> [vpc\_default\_network\_acl\_id](#output\_vpc\_default\_network\_acl\_id) | The ID of the network ACL created by default on VPC creation. |
| <a name="output_vpc_default_route_table_id"></a> [vpc\_default\_route\_table\_id](#output\_vpc\_default\_route\_table\_id) | The ID of the route table created by default on VPC creation. |
| <a name="output_vpc_default_security_group_id"></a> [vpc\_default\_security\_group\_id](#output\_vpc\_default\_security\_group\_id) | The ID of the security group created by default on VPC creation. |
| <a name="output_vpc_ipv6_association_id"></a> [vpc\_ipv6\_association\_id](#output\_vpc\_ipv6\_association\_id) | The association ID for the IPv6 CIDR block. |
| <a name="output_vpc_main_route_table_id"></a> [vpc\_main\_route\_table\_id](#output\_vpc\_main\_route\_table\_id) | The ID of the main route table associated with this VPC. |
<!-- END_TF_DOCS -->