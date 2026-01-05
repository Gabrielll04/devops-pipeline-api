FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Dependências básicas
RUN apt-get update && apt-get install -y \
    curl \
    unzip \
    git \
    ca-certificates \
    gnupg \
    lsb-release

# ---------- GO ----------
ENV GO_VERSION=1.22.1
RUN curl -LO https://go.dev/dl/go${GO_VERSION}.linux-amd64.tar.gz \
 && rm -rf /usr/local/go \
 && tar -C /usr/local -xzf go${GO_VERSION}.linux-amd64.tar.gz \
 && rm go${GO_VERSION}.linux-amd64.tar.gz

ENV PATH="/usr/local/go/bin:${PATH}"

# ---------- TERRAFORM ----------
ENV TERRAFORM_VERSION=1.5.7
RUN curl -LO https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip \
 && unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip \
 && mv terraform /usr/local/bin/terraform \
 && rm terraform_${TERRAFORM_VERSION}_linux_amd64.zip