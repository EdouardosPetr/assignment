# assignment

# Wiz Technical Exercise

This project demonstrates deploying a cloud-native Node.js web app on AWS using Terraform, Docker, and Kubernetes (EKS).  
It includes optional DevSecOps components and a CI/CD pipeline via GitHub Actions.

## Architecture Overview
- AWS VPC with public & private subnets  
- EC2 instance running a vulnerable MongoDB  
- Public S3 bucket for backups  
- EKS cluster hosting the Node.js app  
- App built with Docker and deployed via Kubernetes manifests

## Tech Stack
- Terraform (Infrastructure as Code)
- Docker (Containerization)
- Kubernetes on AWS EKS (Orchestration)
- Node.js + Express (Web App)
- GitHub Actions (CI/CD)
- Wiz CloudLabs (Sandbox Environment)

## Steps to Run
1. Clone the repo  
2. Build and test the app locally (`npm install && node index.js`)  
3. Run `terraform init` and `terraform apply` inside `/terraform`  
4. Connect to EKS and deploy manifests (`kubectl apply -f kubernetes/`)  
5. Access app through Load Balancer DNS  
