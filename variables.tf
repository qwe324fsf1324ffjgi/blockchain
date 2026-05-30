# -----------------------------
# AWS REGION
# -----------------------------
variable "aws_region" {
  description = "AWS region to deploy the Ethereum node"
  type        = string
  default     = "us-east-1"
}

# -----------------------------
# AMI ID (Ubuntu)
# -----------------------------
variable "ami_id" {
  description = "Ubuntu 22.04 AMI ID (update per region if needed)"
  type        = string
}

# -----------------------------
# INSTANCE TYPE
# -----------------------------
variable "instance_type" {
  description = "EC2 instance type for Ethereum node"
  type        = string
  default     = "t3.micro"
}

# -----------------------------
# KEY PAIR
# -----------------------------
variable "key_name" {
  description = "EC2 key pair name for SSH access"
  type        = string
}

# -----------------------------
# YOUR IP (SECURITY)
# -----------------------------
variable "my_ip" {
  description = "Your public IP in CIDR format (e.g. 102.89.23.10/32)"
  type        = string
}
