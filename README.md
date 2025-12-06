# 🏗️ Terraform-AWS-VPC

<p align="center">
  <img src="https://img.shields.io/badge/Terraform-Module-6610f2?style=for-the-badge&logo=terraform&logoColor=white"/>
  <img src="https://img.shields.io/github/stars/yrahul05/terraform-multicloud-labels?style=for-the-badge"/>
</p>


> A clean and opinionated Terraform module by **[Rahul Yadav](https://github.com/yrahul05)**  
> Designed for reliability, performance, and security — following AWS networking best practices.
---

👤 ABOUT ME

Rahul Yadav  
Certified Cloud & DevOps Engineer  

## 🔗 Links

### Personal Profiles
> **GitHub:** [https://github.com/yrahul05](https://github.com/yrahul05)  
> **LinkedIn:** [https://www.linkedin.com/in/rahulyadavdevops/](https://www.linkedin.com/in/rahulyadavdevops/)  
> **Upwork:** [https://www.upwork.com/freelancers/~0183ad8a41e8284283](https://www.upwork.com/freelancers/~0183ad8a41e8284283)

---
## 🌟 Features

- ✅ Creates AWS **VPC**, **route tables**, **IGW**, and **NAT gateways**
- ✅ Supports **multiple CIDR ranges** and **availability zones**
- ✅ Optional **VPC Flow Logs** with CloudWatch or S3 destination
- ✅ Configurable **DHCP options**
- ✅ Modular & production-ready layout
- ✅ Seamless integration with [Rahul Yadav](git::https://github.com/yrahul05/terraform-aws-vpc.git?ref=v1.0.0) Terraform modules

---
## ⚙️ Usage Example
### 🧱 Basic VPC Example
```hcl
module "vpc" {
  source  = "git::https://github.com/yrahul05/terraform-aws-vpc.git?ref=v1.0.0"
  version = "1.0.0"
  name        = "vpc"
  environment = "prod"
  cidr_block            = "10.0.0.0/16"
  additional_cidr_block = ["172.3.0.0/16", "172.2.0.0/16"]
  availability_zones     = ["us-east-2a", "us-east-2b"]
  public_subnet_cidrs    = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnet_cidrs   = ["10.0.3.0/24", "10.0.4.0/24"]
  enable_flow_log                     = true
  create_flow_log_cloudwatch_iam_role = true
  dhcp_options_domain_name         = "service.consul"
  dhcp_options_domain_name_servers = ["127.0.0.1", "10.10.0.2"]
}

```
### ☁️ Outputs (AWS VPC Module)

| Name                                   | Description                                                        |
|---------------------------------------|--------------------------------------------------------------------|
| `id`                                  | The ID of the VPC.                                                 |
| `tags`                                | A mapping of tags assigned to the VPC resource.                    |
| `vpc_cidr`                            | The primary IPv4 CIDR block of the VPC.                             |
| `vpc_ipv6_cidr_block`                 | The primary IPv6 CIDR block of the VPC.                             |
| `vpc_ipv6_association_id`             | The association ID for the primary IPv6 CIDR block.                 |
| `ipv6_cidr_block_network_border_group`| The Network Border Group Zone name for the IPv6 CIDR block.         |

---
### ☁️ Tag Normalization Rules (AWS)

| Cloud | Case      | Allowed Characters | Example                            |
|--------|-----------|------------------|------------------------------------|
| **AWS** | TitleCase | Any              | `Name`, `Environment`, `CostCenter` |

---

## 💙 Maintained by Rahul Yadav
Helping teams build stable, scalable and consistent cloud infrastructure.
