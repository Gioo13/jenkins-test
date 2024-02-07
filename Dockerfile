FROM ubuntu:14.04

RUN apt-get update \
 && apt-get install -y curl git graphviz openssh-client python-pip python-yaml unzip \
 && apt-get autoremove -y \
 && apt-get clean

# Install terraform
RUN curl -o /tmp/terraform.zip -fsSL "https://releases.hashicorp.com/terraform/1.6.6/terraform_1.6.6_linux_amd64.zip" \
 && cd /usr/local/bin \
 && unzip /tmp/terraform.zip \
 && chmod +x terraform \
 && rm /tmp/terraform.zip

# Install terragrunt
RUN curl -o /usr/local/bin/terragrunt -fsSL "https://github.com/gruntwork-io/terragrunt/releases/download/v0.54.18/terragrunt_linux_amd64" \
 && chmod +x /usr/local/bin/terragrunt

ENV PATH="/usr/local/bin:${PATH}"
