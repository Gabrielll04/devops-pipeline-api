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
RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | gpg --dearmor \
    -o /usr/share/keyrings/hashicorp.gpg \
 && echo "deb [signed-by=/usr/share/keyrings/hashicorp.gpg] \
    https://apt.releases.hashicorp.com $(lsb_release -cs) main" \
    > /etc/apt/sources.list.d/hashicorp.list \
 && apt-get update && apt-get install -y terraform