# NLBConfiguretion

This repository contains Terraform code to create an AWS Network Load Balancer (NLB) along with supporting infrastructure such as VPC, subnets, security groups, target groups, and EC2 instances.

# 📌 Overview

This Terraform project deploys:

- AWS VPC with public/private subnets
- Internet Gateway & routing
- Security Groups
- Application resources (EC2 instances)
- Network Load Balancer (NLB)
- Target Groups and listeners

> This project can be used as a foundation for understanding how to configure AWS NLB using Terraform.

---

## 🗂️ Project Structure

```

.
├── main.tf               # Provider and backend configuration
├── vpc.tf                # VPC, subnets, routing, IGW
├── sg.tf                 # Security Groups
├── ec2.tf                # EC2 instance definitions
├── nlb.tf                # Network Load Balancer configuration
├── listeners.tf          # NLB listeners
├── t-grps.tf             # Target groups for NLB
├── output.tf             # Terraform output values
├── terraform.tfstate     # Terraform state file
├── terraform.tfstate.backup
├── .terraform.lock.hcl
└── README.md

````

---

# Prerequisites

Before you begin, make sure you have:

- [Terraform](https://www.terraform.io/downloads.html) installed (v1.x recommended)
- An AWS account
- AWS credentials set up locally (e.g., via `~/.aws/credentials` or environment variables)

---

## Deployment Steps

1. Clone the repository:

   ```bash
   git clone https://github.com/vamshimamidi01/NLBConfiguretion.git
   cd NLBConfiguretion
````

2. Initialize Terraform:

   ```bash
   terraform init
   ```

3. Review the Terraform plan:

   ```bash
   terraform plan
   ```

4. Apply the configuration:

   ```bash
   terraform apply
   ```

   Type `yes` when prompted.

---

##  Outputs

After successful deployment, Terraform will output information such as:

* NLB DNS name
* EC2 instance public IPs
* Target group ARNs

These can be used to verify the setup or connect to deployed resources.

---

##  Cleanup

To remove all AWS resources created with this project:

```bash
terraform destroy
```

> Be careful, this will permanently delete all deployed infrastructure.

---

## 📜 Notes

* Customize your AWS region and instance types as needed.
* Ensure your AWS credentials have appropriate permissions to create VPCs, EC2s, and Load Balancers.

---

## Contributions

Contributions and suggestions are welcome!

---

## 📄 License

This project is licensed under the MIT License.

```

---

# What’s next?

If you want, I can:

✅ Customize the README further based on the actual contents of your `.tf` files  
✅ Extract descriptions of resources (like security groups, NLB listeners) automatically  
✅ Help add examples of Terraform variables and outputs

Just let me know!
::contentReference[oaicite:1]{index=1}
```

[1]: https://github.com/vamshimamidi01/NLBConfiguretion.git "GitHub - vamshimamidi01/NLBConfiguretion"
