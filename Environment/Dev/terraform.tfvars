# AWS Configuration
aws_region  = "us-east-1"
environment = "dev"

# Backend Configuration
state_bucket_name   = "s11kyin-bucket-terraform-state"
dynamodb_table_name = "terraform-state-lock"

# Application S3 Bucket
app_bucket_name = "s11kyin-my-app-bucket-tf"

# Network Configuration
vpc_cidr            = "10.0.0.0/16"
public_subnet_cidr  = "10.0.1.0/24"
private_subnet_cidr = "10.0.2.0/24"
availability_zone   = "us-east-1a"

# EC2 Configuration
ami_id        = "ami-0453ec754f44f9a4a" # Amazon Linux 2023 in us-east-1
instance_type = "t2.micro"
key_name      = "s11kyin-2"

# Security Configuration
local_ip = "129.122.62.198/32"
