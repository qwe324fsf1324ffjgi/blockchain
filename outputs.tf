# -----------------------------
# PUBLIC IP OF EC2 INSTANCE
# -----------------------------
output "ethereum_node_public_ip" {
  description = "Public IP of the Ethereum RPC node"
  value       = aws_instance.eth_node.public_ip
}

# -----------------------------
# RPC ENDPOINT
# -----------------------------
output "ethereum_rpc_endpoint" {
  description = "Ethereum JSON-RPC endpoint URL"
  value       = "http://${aws_instance.eth_node.public_ip}:8545"
}
