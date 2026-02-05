# Terraform AWS VPC Setup
This Terraform project provisions an AWS VPC and multiple subnets using **parameterized variables** to improve flexibility and reusability.
This version (`v0.2.0`) builds on the initial release (`v0.1.0`) by replacing hardcoded values with variables, following Terraform best practices.
---

## Architecture Overview
Resources created by this project:
* **VPC**
  * CIDR: configurable (default: `10.0.0.0/16`)
* **Subnets**
  * Web Subnet – `10.0.0.0/24`
  * App Subnet – `10.0.1.0/24`
  * DB Subnet – `10.0.2.0/24`
  * Server Subnet – `10.0.3.0/24`
All subnets are created inside the same VPC and can be customized using variables.
---

## What Changed Since v0.1.0
* Introduced Terraform variables for:
  * VPC CIDR and name
  * Subnet CIDRs
  * Availability zones
  * Subnet name tags
* Removed hardcoded values from resource definitions
* Improved configurability without changing core architecture
No breaking changes were introduced.
---

## Prerequisites
Before running this project, ensure you have:
* AWS account
* Terraform >= 1.5.0
* AWS credentials configured via:
  * AWS CLI (`aws configure`)
  * Environment variables
  * Shared credentials file
* IAM permissions to manage VPC and subnet resources
---

## Provider Configuration
This project uses the **AWS provider**.
The AWS region and credentials are expected to be configured externally and are not defined in code.
---

## Variables
All infrastructure values are configurable using Terraform variables.
Default values are provided for ease of use, making this version backward-compatible with `v0.1.0`.
---

## Usage
```bash
# Step 1: Initialize Terraform
terraform init

# Step 2: Review the execution plan
terraform plan

# Step 3: Apply the configuration
terraform apply -auto-approve
```
---
## Versioning
This project follows **semantic versioning**.
* `v0.1.0` – Initial release with hardcoded networking values
* `v0.2.0` – Variables introduced for improved flexibility and maintainability

Future versions may include: 

* further reducing the number of variables and resources
* `.tfvars` files
* Environment separation (dev/stage/prod)
* Terraform modules

---



