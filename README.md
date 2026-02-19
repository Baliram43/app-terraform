## Overview
This repository provisions a fully parameterized AWS VPC networking stack using Terraform.

The module now supports:
* Structured outputs
* Multi-environment configurations (Dev / QA / Prod)
* Dynamic subnet scaling
* defining required providers and Terraform version constraints.

This version follows real-time industry best practices for Terraform module development.
---

## Infrastructure Components

* VPC (CIDR & Name configurable)
* Public Subnets (Multi-AZ)
* Private Subnets (Multi-AZ)
* Internet Gateway
* NAT Gateway
* Public Route Table
* Private Route Table
* Route Table Associations
* Structured Infrastructure Outputs

---

## Key Enhancements in v2.0.0

###  Structured Output Object
All infrastructure IDs are exposed through:

```
output "vpc_infra_ids"
```

## Environment Configuration
The infrastructure is configured via:

```
variable "net_info"
```

Example (Dev):

```hcl
net_info = {
  vpccidr = "172.16.0.0/16"
  vpcname = "devmyvpc"
  ...
}
```

You can define separate variable files for:

* dev.tfvars
* qa.tfvars
* prod.tfvars

Example usage:

```bash
terraform apply -var-file="dev.tfvars"
```

---

## Prerequisites

* Terraform >= 1.3
* AWS CLI configured
* AWS credentials with VPC permissions

---

## Usage

```bash
terraform init
terraform validate
terraform fmt
terraform plan
terraform apply -auto-approve
```

---

## Design Principles Followed
* Infrastructure as Code (IaC) best practices
* DRY (Don’t Repeat Yourself)
* Environment reusability
* Clean output interface
* Scalable subnet architecture
---

## Future Enhancements (Roadmap)
* Add Elastic IP for NAT Gateway
* Add VPC Endpoints
* Convert to reusable Terraform module structure
* Remote backend configuration (S3 + DynamoDB)

---



