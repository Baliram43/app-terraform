# Terraform AWS VPC & Subnet Setup
This Terraform project provisions an AWS VPC and multiple subnets using a **single structured object variable**.
It represents an evolution of the project across multiple tagged releases, improving flexibility and maintainability.
---

## Architecture Overview
The following resources are created:

### VPC
* CIDR block: configurable via variable
* Name tag: configurable

### Subnets
Multiple subnets are created dynamically using `count`.
Each subnet is configured with:
* CIDR block
* Availability Zone
* Name tag
All subnet details are defined in a single object variable and iterated during resource creation.

---

## Variable Design
This version uses a **single object variable** (`net_info`) to define all networking configuration.
### Example structure
* VPC CIDR and name
* List of subnet CIDRs
* List of availability zones
* List of subnet names
This approach avoids hardcoding resource counts and enables scalable subnet creation.

---

## Outputs
The following outputs are exposed:
* `vpcid` – ID of the created VPC
* `subnetids` – List of all created subnet IDs
These outputs can be consumed by other Terraform modules or stacks.

---
## Prerequisites
Before running this project, ensure you have:
* An AWS account
* Terraform >= 1.5.0
* AWS credentials configured via:
  * AWS CLI (`aws configure`)
  * Environment variables
  * Shared credentials file
* IAM permissions for VPC and subnet creation

---

## Provider Configuration
This project uses the **AWS provider**.
The AWS region and credentials are expected to be configured externally and are not hardcoded in Terraform files.
---

## Usage
```bash
# Initialize Terraform
terraform init

# Review the execution plan
terraform plan

# Apply the configuration
terraform apply -auto-approve
```

---

## Version History
### v0.1.0
* Initial release
* VPC and subnets created with hardcoded values

### v0.2.0
* Introduced Terraform variables
* Removed hardcoded CIDRs, AZs, and names

### Current Version
* Introduced structured object variable (`net_info`)
* Dynamic subnet creation using `count`
* Added outputs for VPC ID and subnet IDs
* Improved scalability and maintainability

---

## Note
* No breaking changes were introduced between versions
* Future versions may introduce:
  * vfvars
  * Terraform modules
  * Environment-specific configurations



