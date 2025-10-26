# 🚀 Terraform EC2 + Security Group Project

## 🧩 Overview
This project demonstrates a **modular Terraform setup** for deploying AWS resources:

- 🖥️ EC2 Instances  
- 🔐 Security Groups  

It uses separate modules for EC2 and Security Groups, connected via **outputs** and **variables** in the root module — following Infrastructure as Code (IaC) best practices.

---

## 📂 Folder Structure
```
Terraform-Project2/
├── main.tf
├── variables.tf
├── outputs.tf
├── provider.tf
└── modules/
    ├── ec2/
    │   ├── main.tf
    │   ├── variables.tf
    │   └── outputs.tf
    └── security-group/
        ├── main.tf
        ├── variables.tf
        └── outputs.tf
```

---

## ⚙️ Usage

### 1️⃣ Initialize and apply Terraform
```bash
terraform init
terraform plan
terraform apply
```

Follow prompts and provide variable inputs if needed.

---

## 📝 Variables

| Variable Name | Description | Default Value |
|----------------|--------------|----------------|
| `aws_region` | AWS region to deploy resources | `ap-south-1` |
| `ami_id` | Optional custom AMI ID | `""` |
| `instance_type` | EC2 instance type | `t2.micro` |
| `instance_name` | Name of the EC2 instance | `TerraformEC2Instance` |
| `sg_name` | Name of the Security Group | `TerraformSecurityGroup` |
| `vpc_id` | Optional VPC ID | `null` |

---

## 📤 Outputs

| Output Name | Description |
|--------------|-------------|
| `ec2_public_ip` | Public IP of the EC2 instance |
| `ec2_id` | EC2 instance ID |
| `sg_id` | Security Group ID |

---

## 🚀 Next Steps

- Extend this setup into a **production-ready environment** with:
  - VPCs  
  - Subnets  
  - Route Tables  
  - Internet Gateways  
- Add additional resources like:
  - Load Balancers  
  - Databases  
  - Monitoring tools  
- Continue improving **modularity** and **reusability**.

---

### 💬 Notes
This project is part of my learning journey with Terraform — focusing on building modular, reusable, and scalable AWS infrastructure.
