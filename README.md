# Terraform AWS VPC Setup
This Terraform project provisions a basic AWS networking setup including:
- One VPC
- Multiple subnets for different tiers (web, app, db, server)

The configuration is intended for learning and initial infrastructure setup and will be enhanced with variables and modules in future versions.
---

## Architecture Overview
Resources created by this project:
- **VPC**
  - CIDR: '10.0.0.0/16'

- **Subnets**
  - Web Subnet: '10.0.0.0/24'
  - App Subnet: '10.0.1.0/24'
  - DB Subnet: '10.0.2.0/24'
  - Server Subnet: '10.0.3.0/24'

All subnets are created inside the same VPC.
---

## Prerequisites
Before running this project, ensure you have:
- AWS account
- AWS CLI configured ('aws configure')
- Terraform >= 1.5.0
- Valid AWS credentials with VPC permissions
---

## Provider Configuration
This project uses the "AWS provider".
Region and credentials are expected to be configured via:
- AWS CLI
- Environment variables
- Shared credentials file
---


## Usage

```bash
# Step 1: Initialize Terraform
terraform init

# Step 2: Review the execution plan
terraform plan

# Step 3: Apply the configuration automatically
terraform apply -auto-approve
