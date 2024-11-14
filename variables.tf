#Description : Terraform label module variables.
variable "name" {
  type        = string
  default     = ""
  description = "Name  (e.g. `app` or `cluster`)."
}

variable "environment" {
  type        = string
  default     = "hello"
  description = "Environment (e.g. `prod`, `dev`, `staging`)."
}

variable "repository" {
  type        = string
  default     = ""
  description = "Terraform current module repo"
}

variable "label_order" {
  type        = list(any)
  default     = ["name", "environment"]
  description = "Label order, e.g. `name`,`application`."
}

variable "managedby" {
  type        = string
  default     = "yrahul05"
  description = "ManagedBy, eg 'yrahul05'"
}

#Module      : VPC
#Description : Terraform VPC module variables.
variable "enable" {
  type        = bool
  default     = true
  description = "Flag to control the vpc creation."
}


variable "cidr_block" {
  type        = string
  default     = ""
  description = "CIDR for the VPC."
}


variable "ipv6_cidr_block" {
  type        = string
  default     = null
  description = "IPv6 CIDR for the VPC."
}

variable "instance_tenancy" {
  type        = string
  default     = "default"
  description = "A tenancy option for instances launched into the VPC."
}

variable "dns_hostnames_enabled" {
  type        = bool
  default     = false
  description = "A boolean flag to enable/disable DNS hostnames in the VPC."
}

variable "dns_support_enabled" {
  type        = bool
  default     = false
  description = "A boolean flag to enable/disable DNS support in the VPC."
}


variable "ipv4_ipam_pool_id" {
  type        = string
  default     = ""
  description = "The ID of an IPv4 IPAM pool you want to use for allocating this VPC's CIDR."
}

variable "ipv4_netmask_length" {
  type        = string
  default     = null
  description = "The netmask length of the IPv4 CIDR you want to allocate to this VPC. Requires specifying a ipv4_ipam_pool_id"
}

variable "ipv6_ipam_pool_id" {
  type        = string
  default     = null
  description = "The ID of an IPv6 IPAM pool you want to use for allocating this VPC's CIDR."
}

variable "ipv6_netmask_length" {
  type        = string
  default     = null
  description = "The netmask length of the IPv4 CIDR you want to allocate to this VPC. Requires specifying a ipv6_ipam_pool_id"
}

variable "ipam_pool_enable" {
  type    = string
  default = false
}

variable "assign_generated_ipv6_cidr_block" {
  type    = string
  default = null
}


variable "ipv6_cidr_block_network_border_group" {
  type    = string
  default = null
}



variable "enable_network_address_usage_metrics" {
  type    = string
  default = null
}

