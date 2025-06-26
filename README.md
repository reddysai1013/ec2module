# ec2module
# AWS EC2 Instance Terraform Module

This Terraform module provisions a single **EC2 instance** in AWS with customizable settings such as AMI, instance type, monitoring, and tags.

## 🧰 Requirements

- [Terraform](https://www.terraform.io/downloads.html) >= 1.3
- AWS CLI configured or environment variables set
- AWS provider `~> 5.0`

---

## 🔧 Usage

```hcl
module "ec2_instance" {
  source = "./path-to-your-module"

  ami           = "ami-0f9de6e2d2f067fca"
  instance_type = "t3.micro"
  monitoring    = true
  tags = {
    Name        = "MyAppServer"
    Environment = "Dev"
    Owner       = "Charan"
  }
}
