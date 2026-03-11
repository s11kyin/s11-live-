terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

# Backend Module
module "backend" {
  source      = "./modules/backend"
  bucket_name = var.state_bucket_name
  table_name  = var.dynamodb_table_name
  environment = var.environment
}

# VPC Module
module "vpc" {
  source              = "./modules/vpc"
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  availability_zone   = var.availability_zone
  environment         = var.environment
}

# S3 Module
module "s3" {
  source      = "./modules/s3"
  bucket_name = var.app_bucket_name
  environment = var.environment
}

# EC2 Module
module "ec2" {
  source = "./modules/ec2"

  environment       = var.environment
  vpc_id            = module.vpc.vpc_id
  public_subnet_id  = module.vpc.public_subnet_id
  private_subnet_id = module.vpc.private_subnet_id
  ami_id            = var.ami_id
  instance_type     = var.instance_type
  key_name          = var.key_name
  local_ip          = var.local_ip
}
