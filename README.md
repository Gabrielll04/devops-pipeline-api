# devops-pipeline-microservice

## About

This project provides a template infrastructure for a simple API written in Go,deployed on OCI (Oracle Cloud Infrastructure). It demonstrates a complete DevOps workflow including CI/CD, Docker containerization, and Terraform-based infrastructure provisioning.

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
