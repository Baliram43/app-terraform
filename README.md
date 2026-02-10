# AWS VPC Terraform Networking-Note:-syntax is not correct just we defined hardcoded values, to better understanding only 

# Overview
This repository contains Terraform code for provisioning AWS VPC networking resources.
The configuration defines a VPC with public and private subnets, routing tables,
an Internet Gateway, and a NAT Gateway.

This is an initial implementation intended for further development and refinement.

---

## Infrastructure Components
- VPC
- Public Subnets (2)
- Private Subnets (2)
- Internet Gateway
- NAT Gateway
- Public Route Table
- Private Route Table
- Route Table Associations

---


## ⚙️ Prerequisites
- Terraform installed
- AWS CLI configured
- Valid AWS credentials with VPC permissions

---

## 🚀 Usage

Initialize Terraform:
```bash
terraform init
terraform validate
terrafrom fmt

