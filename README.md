# devops-pipeline-microservice

## About

This project provides a reference DevOps infrastructure for deploying a simple Go-based API on OCI (Oracle Cloud Infrastructure). The goal is to demonstrate how a small service can be built, packaged, and deployed using **industry-standard DevOps practices**, without unnecessary complexity.

Rather than focusing on advanced platform abstractions (like Kubernetes), this project prioritizes **clarity, reproducibility, and VM-based infrastructure**, which is still very common in real-world environments.

## Problem Statement

Deploying even a simple API can be error-prone and time-consuming if done manually. Differences between development, staging, and production environments often lead to bugs and downtime. Additionally, without proper CI/CD and monitoring, maintaining and scaling services becomes difficult.

This project solves these issues by providing a fully automated DevOps pipeline.

## Features
- Simple Go API with /health endpoint
- Multi stage build using distroless Docker images for easy deployment
- Terraform scripts for OCI infrastructure
- CI/CD pipeline using GitHub Actions
- Monitoring with Prometheus and Grafana (planned)

## Architecture
wip

## Getting Started
wip

## Future improvements
- Kubernetes (OKE) 
- Terraform pipelines (tfstate on S3 for example)
- Multi-branch pipelines
