# DevOps Testing Repository

This repository is a playground for exploring and testing various DevOps tools commonly used in infrastructure automation, configuration management, and CI/CD pipelines. It is designed to be a learning resource and a place to document workflows, scripts, and example configurations.

## Table of Contents

-   [DevOps Testing Repository](#devops-testing-repository)
    -   [Table of Contents](#table-of-contents)
    -   [Overview](#overview)
    -   [Technologies Used](#technologies-used)
    -   [Getting Started](#getting-started)
        -   [Prerequisites](#prerequisites)
        -   [Installation](#installation)
    -   [Project Structure](#project-structure)
    -   [Tools to Be Explored](#tools-to-be-explored)

## Overview

This repository contains code samples, scripts, and configuration files to help with the following:

-   Automating infrastructure provisioning using **Terraform**
-   Managing configuration for servers and applications with **Ansible**
-   Implementing DevOps best practices and experimenting with CI/CD workflows
-   Testing integrations between Terraform, Ansible, and cloud providers (e.g., AWS, Azure)

The goal is to provide a hands-on environment for learning and experimenting with these tools.

## Technologies Used

-   **Terraform**: For infrastructure provisioning and management.
-   **Ansible**: For configuration management and application deployment.
-   **Python**: For scripting and automating custom tasks.
-   **Bash/PowerShell**: For shell scripting as needed.
-   **CI/CD Tools**: GitHub Actions, Jenkins (if applicable).

## Getting Started

### Prerequisites

To use this repository, you’ll need:

-   [Terraform](https://www.terraform.io/downloads.html) installed
-   [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html) installed
-   Access to a cloud provider (e.g., AWS, Azure) with credentials set up
-   Git, Bash, and optionally Python 3.x for additional scripting

### Installation

1. **Clone the repository:**

    ```bash
    git clone git@github.com:ejohnguia/devops-train.git
    cd devops-train
    ```

2. **Set up environment variables** for Terraform and Ansible if needed:

    ```bash
    export ACCESS_KEY_ID=your_access_key
    export SECRET_ACCESS_KEY=your_secret_key
    ```

3. **Install Python dependencies** (if any):
    ```bash
    pip install -r requirements.txt
    ```

## Project Structure

```plaintext
.
├── terraform/                 # Terraform configuration files
│   ├── main.tf                # Example main configuration
│   ├── variables.tf           # Variables used in Terraform
│   └── outputs.tf             # Outputs of Terraform resources
├── ansible/                   # Ansible playbooks and roles
│   ├── playbook.yml           # Main Ansible playbook
│   └── roles/                 # Ansible roles
├── scripts/                   # Shell/Python scripts for automation
├── .github/workflows/         # GitHub Actions workflows (if using GitHub Actions)
└── README.md                  # This README file
```

## Tools to Be Explored

Based on the [DevOps Roadmap](https://roadmap.sh/devops), the following tools and concepts will be explored as part of this repository:

-   **Operating Systems**: Focusing on Linux fundamentals and shell scripting
-   **Programming/Scripting**: Python and Bash for automation
-   **Infrastructure as Code (IaC)**:
    -   Terraform: Automating infrastructure setup on cloud providers
    -   CloudFormation (AWS), ARM Templates (Azure): To be explored for cloud-native IaC
-   **Configuration Management**:
    -   Ansible: Automating application and environment configurations
    -   Chef and Puppet: To be considered for advanced use cases
-   **CI/CD Tools**:
    -   GitHub Actions: For CI/CD pipelines
    -   Jenkins: To be explored for end-to-end automation
-   **Containers & Orchestration**:
    -   Docker: Building and running containerized applications
    -   Kubernetes: Managing container clusters
-   **Monitoring & Logging**:
    -   Prometheus & Grafana: Setting up metrics and visualization
    -   ELK Stack (Elasticsearch, Logstash, and Kibana): Centralized logging
-   **Cloud Providers**:
    -   AWS, Azure, Google Cloud: Testing IaC and configuration management across providers
-   **Networking Basics**: Understanding key concepts for network configuration and security
-   **Version Control**:
    -   Git: Branching strategies, workflows, and best practices

This list will expand as the project grows, incorporating additional tools and techniques aligned with DevOps best practices.
