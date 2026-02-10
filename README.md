# AWS VPC Terraform Networking (Parameterized Version)

## Overview
This repository contains Terraform code for provisioning a fully parameterized AWS VPC networking stack.  
It creates a VPC, multiple public and private subnets across availability zones, route tables, an Internet Gateway, and a NAT Gateway.

This version is **configurable via the `net_info` variable**, replacing hardcoded values from previous versions.

---

## Infrastructure Components
- VPC (CIDR and name configurable)
- Public Subnets (count, AZs, CIDRs, names configurable)
- Private Subnets (count, AZs, CIDRs, names configurable)
- Internet Gateway
- NAT Gateway
- Public Route Table
- Private Route Table
- Route Table Associations

---

##  Prerequisites
- Terraform installed (>= 1.3 recommended)  
- AWS CLI configured  
- AWS credentials with sufficient VPC permissions  

---

##  Variables

### `net_info`
Type: `object`  
Contains all network configuration:

| Field               | Description 
|-------              |------------ 
| `vpccidr`           | CIDR block for the VPC 
| `vpcname`           | Name tag for the VPC 
| `pubsubnets_info`   | List of objects for public subnets: AZs, CIDRs, Names 
| `pvtsubnets_info`   | List of objects for private subnets: AZs, CIDRs, Names 

Default variable includes two public and two private subnets.

---

## Usage

Initialize Terraform:
```bash
terraform init
terrform validate
terraform fmt
terraform plan
terraform apply -auto-approve

