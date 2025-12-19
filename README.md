🚀 DevOps Final Project — Zhantemir Berikov

A full-cycle production-grade DevOps solution demonstrating:
CI/CD → Containerization → Orchestration → Infrastructure Automation.

This project proves hands-on expertise in:
Docker • Kubernetes • Jenkins • Ansible • CI/CD Pipelines • Automation Engineering

🏗 System Architecture

Spring Boot REST application → containerized with Docker → stored in DockerHub → deployed to Kubernetes via Jenkins Pipeline → infrastructure automated with Ansible.

Developer → Jenkins CI/CD → Docker Build → Push to DockerHub
→ Kubernetes Deployment (Deployment + Service NodePort)
→ Ansible Infrastructure Automation

<img width="8666" height="2433" alt="Untitled diagram-2025-12-19-073838" src="https://github.com/user-attachments/assets/2287cf9d-a8e2-478d-8787-b1906c866cce" />

📂 Project Structure
/opt/devops-project
├── app/                     # Spring Boot Application
│   ├── src/
│   ├── pom.xml
│   └── target/devopsapp.jar
│
├── k8s/                     # Kubernetes Manifests
│   ├── deployment_ZhantemirB.yaml
│   ├── service_ZhantemirB.yaml
│   ├── configmap_ZhantemirB.yaml
│   └── secret_ZhantemirB.yaml
│
├── ansible/                 # Infrastructure Automation
│   ├── roles/
│   │   ├── common
│   │   ├── kubernetes
│   │   └── jenkins
│   ├── inventory
│   ├── site.yml
│   └── vault.yml
│
└── README.md
🎯 CI/CD Pipeline (Jenkins)
✔ Implemented pipeline stages:

Maven build

Docker image build

Push image to DockerHub

Kubernetes Deployment apply

Rollout restart for updates

Fully automated and idempotent

<img width="1442" height="829" alt="image" src="https://github.com/user-attachments/assets/52042dd7-6e63-4046-97c8-28500cf90ca0" />

☸ Kubernetes Deployment

Application successfully deployed to Minikube.
Deployment: 2 replicas
Service: NodePort
ConfigMap + Secret enabled

Verification:
kubectl get pods
kubectl get svc
kubectl get endpoints

<img width="1280" height="233" alt="image" src="https://github.com/user-attachments/assets/ac3d8c83-d19c-4ed4-83a5-ed20c4a25b55" />

🧪 Application Verification
Access through Minikube
minikube service todo-service-zhantemirb --url

<img width="1360" height="139" alt="image" src="https://github.com/user-attachments/assets/1467b478-e4f5-4fb6-9cdd-3a396957521b" />


🤖 Ansible — Infrastructure Automation

Automation includes:

✔ Inventory
✔ Roles
✔ Variables
✔ Handlers
✔ Fully idempotent playbooks
✔ Ansible Vault protection

Run:
ansible-playbook -i inventory site.yml --ask-vault-pass
<img width="1610" height="1444" alt="image" src="https://github.com/user-attachments/assets/f3561568-a386-4f6b-9631-b98ed3f93529" />

🔐 Ansible Vault

Sensitive data is securely stored:

Jenkins admin credentials

Other confidential variables

Vault file:
ansible/vault.yml

Run with vault:
ansible-playbook site.yml --ask-vault-pass
<img width="1588" height="670" alt="image" src="https://github.com/user-attachments/assets/7e898ab1-af10-4c68-a5d6-b03c5f63bc88" />

🧰 Technology Stack
Technology	Purpose
Ubuntu Server	Base Environment
Docker	Containerization
DockerHub	Image Registry
Jenkins	CI/CD Automation
Kubernetes (Minikube)	Orchestration
Spring Boot	Application
Maven	Build Tool
Ansible	Infrastructure Automation
✔ Verification Evidence

This project includes:

✔ Fully working deployed application
✔ Running Kubernetes workloads
✔ Working NodePort service
✔ Successfully executed Jenkins pipeline
✔ Automated provisioning using Ansible
✔ Vault secured secrets
✔ Stable and repeatable CI/CD workflow

👨‍💻 Author

Zhantemir Berikov
DevOps Engineer — Automation • Cloud • CI/CD • Kubernetes
