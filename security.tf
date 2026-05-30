# -----------------------------
# SECURITY GROUP (ETH NODE)
# -----------------------------
resource "aws_security_group" "eth_sg" {
  name        = "ethereum-node-sg"
  description = "Secure access for Ethereum RPC node"

  # -----------------------------
  # SSH ACCESS (YOUR IP ONLY)
  # -----------------------------
  ingress {
    description = "SSH access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.my_ip]
  }

  # -----------------------------
  # ETHEREUM RPC (RESTRICTED)
  # -----------------------------
  ingress {
    description = "Ethereum JSON-RPC"
    from_port   = 8545
    to_port     = 8545
    protocol    = "tcp"
    cidr_blocks = [var.my_ip]
  }

  # -----------------------------
  # P2P NETWORK PORT (OPTIONAL FOR NODE SYNC)
  # -----------------------------
  ingress {
    description = "Ethereum P2P"
    from_port   = 30303
    to_port     = 30303
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # -----------------------------
  # OUTBOUND TRAFFIC (OPEN)
  # -----------------------------
  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "ethereum-node-sg"
    Project     = "terraform-blockchain-node"
    Environment = "dev"
  }
}
