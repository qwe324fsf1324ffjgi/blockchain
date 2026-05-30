#!/bin/bash

set -e

# -----------------------------
# Update system
# -----------------------------
apt-get update -y
apt-get upgrade -y

# -----------------------------
# Install Docker
# -----------------------------
apt-get install -y docker.io

systemctl start docker
systemctl enable docker

# -----------------------------
# Pull Ethereum client (Geth)
# -----------------------------
docker pull ethereum/client-go:stable

# -----------------------------
# Run Ethereum node (light RPC mode)
# -----------------------------
docker run -d \
  --name ethereum-node \
  -p 8545:8545 \
  -p 30303:30303 \
  ethereum/client-go:stable \
  --http \
  --http.addr "0.0.0.0" \
  --http.port 8545 \
  --http.api "eth,net,web3" \
  --http.corsdomain "*" \
  --syncmode "light"

# -----------------------------
# Ensure container restarts on reboot
# -----------------------------
docker update --restart unless-stopped ethereum-node
