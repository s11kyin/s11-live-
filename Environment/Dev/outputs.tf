output "vpc_id" {
  description = "VPC ID"
  value       = module.vpc.vpc_id
}

output "public_subnet_id" {
  description = "Public subnet ID"
  value       = module.vpc.public_subnet_id
}

output "private_subnet_id" {
  description = "Private subnet ID"
  value       = module.vpc.private_subnet_id
}

output "public_ec2_ip" {
  description = "Public IP of bastion host"
  value       = module.ec2.public_ec2_public_ip
}

output "private_ec2_ip" {
  description = "Private IP of private instance"
  value       = module.ec2.private_ec2_private_ip
}

output "app_bucket_name" {
  description = "Application S3 bucket name"
  value       = module.s3.bucket_name
}

output "ssh_connection_command" {
  description = "SSH command to connect to bastion host"
  value       = "ssh -i ${var.key_name}.pem ec2-user@${module.ec2.public_ec2_public_ip}"
}

output "ssh_to_private_command" {
  description = "SSH command to connect to private instance from bastion"
  value       = "ssh -i ${var.key_name}.pem ec2-user@${module.ec2.private_ec2_private_ip}"
}

output "public_ec2_security_group_id" {
  description = "Public EC2 security group ID"
  value       = module.ec2.public_security_group_id
}

output "private_ec2_security_group_id" {
  description = "Private EC2 security group ID"
  value       = module.ec2.private_security_group_id
}
