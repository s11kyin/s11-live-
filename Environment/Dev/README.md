# Terraform AWS Infrastructure

Simple modular Terraform project for AWS infrastructure deployment.

## Structure

```
resources/
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars.example
├── terraform.tfvars
└── modules/
    ├── backend/
    ├── vpc/
    ├── s3/
    └── ec2/
```

## Quick Start

1. **Configure variables**:
   ```bash
   cd resources
   cp terraform.tfvars.example terraform.tfvars
   # Edit terraform.tfvars with your settings
   ```

2. **Deploy**:
   ```bash
   terraform init
   terraform plan
   terraform apply
   ```

3. **Validate**:
   ```bash
   # SSH to bastion
   ssh -i your-key.pem ec2-user@<PUBLIC_IP>
   
   # From bastion to private instance
   ssh -i your-key.pem ec2-user@<PRIVATE_IP>
   
   # Test NAT Gateway
   sudo yum update -y
   ```

## Configuration

Update `terraform.tfvars` with your values:

- `state_bucket_name` - Must be globally unique
- `app_bucket_name` - Must be globally unique
- `key_name` - Your EC2 key pair name
- `local_ip` - Your public IP (format: x.x.x.x/32)

## Clean Up

```bash
terraform destroy
```
