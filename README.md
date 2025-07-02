# Capstone: Basic AWS Infrastructure with Terraform

This project uses **Terraform** to deploy a simple yet foundational AWS infrastructure that includes:

- A custom **VPC**
- A **subnet** within the VPC
- An **EC2 instance** (Amazon Linux)
- User-defined variables for flexibility

Designed as part of the DEHAM22 Capstone project, this setup is ideal for learning and teaching core AWS Infrastructure-as-Code (IaC) concepts.

---

## 📦 Project Structure

```bash
.
├── main.tf             # Core infrastructure definitions
├── variables.tf        # Input variables
├── outputs.tf          # (optional) Outputs for resources
└── README.md           # Project documentation
```

---

## 🌐 Architecture Overview

```text
AWS Region: us-west-2
└── VPC: myFirstVPC (CIDR: 192.168.1.0/24)
    └── Subnet: Public Subnet 1 (CIDR: 192.168.1.0/24)
        └── EC2 Instance: myFirstInstance (AMI: Amazon Linux, Type: t3.micro)
```

---

## ✅ Prerequisites

- [Terraform](https://developer.hashicorp.com/terraform/downloads) >= 1.0
- An active AWS account
- AWS credentials configured (`~/.aws/credentials` or environment variables)
- A valid EC2 key pair already created in AWS (`key_name`)

---

## ⚙️ How to Use

### 1. Clone the Repository

```bash
git clone https://github.com/Kreyno93/capstone-deham22-v2.git
cd capstone-deham22-v2
```

### 2. Customize Variables

You can edit the variables directly in a `terraform.tfvars` file or pass them via CLI:

```hcl
aws_region    = "us-west-2"
ami_id        = "ami-040361ed8686a66a2"
instance_type = "t3.micro"
key_name      = "vockey"
vpc_cidr      = "192.168.1.0/24"
subnet_cidr   = "192.168.1.0/24"
```

### 3. Initialize Terraform

```bash
terraform init
```

### 4. Preview the Infrastructure

```bash
terraform plan
```

### 5. Apply the Configuration

```bash
terraform apply
```

---

## 📌 Variables

| Name            | Description                       | Type   | Default       | Required |
| --------------- | --------------------------------- | ------ | ------------- | -------- |
| `aws_region`    | AWS region to deploy resources in | string | —             | ✅       |
| `ami_id`        | AMI ID for the EC2 instance       | string | —             | ✅       |
| `instance_type` | Type of EC2 instance              | string | —             | ✅       |
| `key_name`      | EC2 key pair name for SSH         | string | —             | ✅       |
| `vpc_cidr`      | CIDR block for the VPC            | string | `10.0.0.0/16` | ❌       |
| `subnet_cidr`   | CIDR block for the subnet         | string | `10.0.1.0/24` | ❌       |

---

## 🔐 Security Notice

Ensure that your `key_name` corresponds to a real key pair in your AWS account. Use security groups to restrict public access to your EC2 instance.

---

## 📄 License

This project is licensed under the [MIT License](LICENSE). Feel free to use and adapt it for your learning or internal projects.

---

## 👥 Contributors

- **Michael Wagener**

---

## 🙋‍♀️ Questions or Feedback?

Feel free to open an [issue](https://github.com/Kreyno93/capstone-deham22-v2/issues) or submit a [pull request](https://github.com/Kreyno93/capstone-deham22-v2/pulls)!
