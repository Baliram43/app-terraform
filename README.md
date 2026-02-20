##  Production-Ready AWS VPC Networking Stack (Terraform)

This project provisions a scalable, multi-environment AWS VPC networking stack using **Terraform** with remote state management and state locking.
It follows Infrastructure as Code (IaC) best practices and is designed for real-world DevOps environments (Dev / QA / Prod).
optimised Locals block
---

## Infrastructure Components
The stack provisions:
* VPC (Configurable CIDR & Name)
* Public Subnets (Multi-AZ)
* Private Subnets (Multi-AZ)
* Internet Gateway
* NAT Gateway
* Public Route Tables
* Private Route Tables
* Route Table Associations
* Structured Output Object
* Remote Backend (S3)
* State Locking (DynamoDB)
---

##  Technology Stack
* **Terraform** (>= 1.15.0)
* **Amazon Web Services**
* **Amazon S3** (Remote State)
* **Amazon DynamoDB** (State Locking)

---

##  Project Structure

```
.
├── main.tf
├── variables.tf
├── outputs.tf
├── provider.tf
├── dev.tfvars
├── qa.tfvars
├── prod.tfvars
└── README.md
```

---

##  Remote Backend Configuration

State is stored securely in S3 with DynamoDB locking:

```hcl
backend "s3" {
  region         = "ap-south-1"
  bucket         = "mys3bucket-terraform-demo"
  key            = "devops/vpcstate"
  #dynamodb_table = "mydbtable"
  use_lockfile="true"
}
```

### Why This Matters
* Prevents state corruption
* Enables team collaboration
* Provides state locking
* Production-grade state management

---

##  Multi-Environment Support
Infrastructure is fully parameterized via:

```hcl
variable "net_info"
```

Deploy different environments safely:
```bash
terraform apply -var-file="dev.tfvars"
terraform apply -var-file="qa.tfvars"
terraform apply -var-file="prod.tfvars"
```
Each environment remains isolated.
---

##  Structured Output

All infrastructure identifiers are exposed through a single object:

```
vpc_infra_ids
```

Example structure:

* vpc_id
* public_subnet_ids
* private_subnet_ids
* igw_id
* nat_gateway_id
* route_table_ids

Clean, maintainable output contract.
---

## 🛠 Usage

```bash
terraform init
terraform validate
terraform fmt
terraform plan
terraform apply
```

---

##  Prerequisites

* Terraform >= 1.15.0
* AWS CLI configured
* IAM user/role with VPC provisioning permissions
* Pre-created:

  * S3 bucket for backend
  * DynamoDB table for locking

---

##  Design Principles

* Infrastructure as Code (IaC)
* DRY (Don't Repeat Yourself)
* Environment Isolation
* Scalable Subnet Architecture
* Remote State Best Practices
* Production-Ready Structure

---

## Future Enhancements

* Elastic IP support for NAT Gateway
* VPC Endpoints integration
* CI/CD pipeline integration
* Publish as Terraform Registry module

---

