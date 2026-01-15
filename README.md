# devops-pipeline-microservice

## About

This project provides a reference DevOps infrastructure for deploying a simple Go-based API on OCI (Oracle Cloud Infrastructure). The goal is to demonstrate how a small service can be built, packaged, and deployed using **industry-standard DevOps practices**, without unnecessary complexity.

Rather than focusing on advanced platform abstractions (like Kubernetes), this project prioritizes **clarity, reproducibility, and VM-based infrastructure**, which is still very common in real-world environments.

## Problem Statement

Deploying even a simple API can be error-prone and time-consuming if done manually. Differences between development, staging, and production environments often lead to bugs and downtime. Additionally, without proper CI/CD and monitoring, maintaining and scaling services becomes difficult.

This project solves these issues by providing a fully automated DevOps pipeline.

## Features

- Simple Go API with a `/health` endpoint
- Multi-stage Docker build using **distroless images**
- Infrastructure provisioning with **Terraform** on OCI
- CI/CD pipeline using **GitHub Actions**
- VM-based deployment model (no Kubernetes)

> ⚠️ **Observability Note**
>
> This project currently **does not include observability (Prometheus/Grafana)**. Monitoring may be added in the future, but it is intentionally out of scope for now to keep the project focused on core deployment and infrastructure concepts.


## Architecture

**Current (simplified):**

```
Developer
   ↓
GitHub (code + pipeline)
   ↓
GitHub Actions (CI/CD)
   ↓
Terraform (OCI)
   ↓
Compute VM
   ↓
systemd service (Go API)
```

## Getting Started
wip

## Future improvements
- Kubernetes (OKE) 
- Terraform pipelines (tfstate on S3 for example)
- Multi-branch pipelines
