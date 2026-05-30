I can't honestly provide a README that **guarantees** your Google Drive image will display on GitHub, because GitHub's rendering behavior is outside my control and Google Drive images often don't render inline.

What I can provide is a complete README that uses the correct Google Drive image syntax. If GitHub accepts the Drive-hosted image, it will display automatically; if not, you'll need to host the image elsewhere.

# ⛓️ Ethereum RPC Node on AWS (Terraform One-Click Deploy)

A simple Infrastructure-as-Code project that deploys an Ethereum RPC node on AWS using Terraform.

This project demonstrates real-world DevOps skills including:

* Infrastructure automation (Terraform)
* Cloud deployment (AWS EC2)
* Docker-based node setup
* Secure and reproducible provisioning

---

## 🖼️ Architecture Overview

![Ethereum RPC Node](https://drive.google.com/uc?export=view\&id=1l2UY3VkKYxUoguxsp8c9ojdRwiB-qSWM)

---

## 🚀 What This Project Does

With just one command:

```bash
terraform init
terraform apply
```

It automatically:

* Creates an AWS EC2 instance
* Installs Docker on the server
* Pulls and runs an Ethereum client (RPC node)
* Exposes an RPC endpoint for blockchain interaction

---

## 🧱 Tech Stack

* **Terraform** → Infrastructure as Code
* **AWS EC2** → Cloud compute
* **Docker** → Containerized Ethereum node
* **Ethereum Client** → RPC service (e.g., Geth / Nethermind)

---

## 📁 Project Structure

```text
.
├── main.tf          # EC2 instance + infrastructure definition
├── variables.tf     # Input variables
├── outputs.tf       # Outputs (public IP, RPC endpoint)
├── user_data.sh     # EC2 bootstrap script (installs Docker + runs node)
└── README.md
```

---

## ⚙️ Requirements

Before running this project, ensure you have:

* AWS account
* AWS CLI configured (`aws configure`)
* Terraform installed (>= 1.3)
* Key pair created in AWS (for EC2 SSH access)

---

## 🚀 Deployment Steps

### 1. Clone the repository

```bash
git clone https://github.com/your-username/ethereum-terraform-node.git
cd ethereum-terraform-node
```

### 2. Initialize Terraform

```bash
terraform init
```

### 3. Preview Infrastructure

```bash
terraform plan
```

### 4. Deploy to AWS

```bash
terraform apply
```

Type `yes` when prompted.

---

## 🌐 Accessing the Node

After deployment, Terraform will output:

```text
RPC Endpoint:
http://<EC2_PUBLIC_IP>:8545
```

You can use this endpoint to:

* Query blockchain data
* Connect wallets or dApps
* Test smart contract interactions

---

## 📦 Example Outputs

```bash
public_ip = "3.88.xxx.xxx"
rpc_url   = "http://3.88.xxx.xxx:8545"
```

---

## 🔐 Security Notes

* Only port `8545` (RPC) and `22` (SSH) are exposed
* Security groups restrict unnecessary traffic
* This setup is for learning and demonstration purposes
* Additional hardening is recommended for production environments

---

## 🧠 What You Learn From This Project

* How blockchain nodes run in real infrastructure
* AWS EC2 provisioning using Terraform
* Automating server setup with user-data scripts
* Docker-based deployment patterns
* Infrastructure as Code best practices

---

## 📈 Possible Improvements

If you want to level this project up:

* Add Auto Scaling Groups
* Add CloudWatch monitoring
* Use EBS for persistent blockchain storage
* Add HTTPS + reverse proxy (Nginx)
* Deploy multiple nodes (multi-region RPC cluster)
* Add GitHub Actions CI/CD
* Add Prometheus and Grafana monitoring

---

## 👨‍💻 Author

Built as a DevOps + Blockchain infrastructure showcase project.

---

## ⭐ If You Like This Project

Give it a star and use it as a base for your own blockchain DevOps portfolio.

If the image does not appear after pasting this into GitHub, the README is correct—the image host is the issue. In that case, upload the image to the repository and switch the image line to a repository path.
