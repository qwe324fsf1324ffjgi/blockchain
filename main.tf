terraform {
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

resource "aws_instance" "eth_node" {
  ami           = var.ami_id
  instance_type = var.instance_type

  key_name = var.key_name

  vpc_security_group_ids = [
    aws_security_group.eth_sg.id
  ]

  user_data = file("${path.module}/user_data.sh")

  tags = {
    Name        = "ethereum-rpc-node"
    Environment = "dev"
    Project     = "terraform-blockchain-node"
  }
}


resource "aws_security_group" "eth_sg" {
  name        = "eth-node-sg"
  description = "Allow SSH and Ethereum RPC (restricted)"

  # SSH Access (your IP only)
  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.my_ip]
  }

  # Ethereum RPC (VERY IMPORTANT: restricted)
  ingress {
    description = "Ethereum RPC"
    from_port   = 8545
    to_port     = 8545
    protocol    = "tcp"
    cidr_blocks = [var.my_ip]
  }

  # Outbound traffic (open)
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "eth-node-sg"
  }
}
