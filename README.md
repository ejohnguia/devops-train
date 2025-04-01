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

## Overview

This repository contains code samples, scripts, and configuration files to help with the following:

-   Automating infrastructure provisioning using **Terraform**
-   Managing configuration for servers and applications with **Ansible**
-   Implementing DevOps best practices and experimenting with CI/CD workflows
-   Testing integrations between Terraform, Ansible, and cloud providers (e.g., AWS, Azure)

We utilize **Terraform Cloud** for remote state management, team collaboration, and execution of infrastructure changes. You can access Terraform Cloud at [Terraform Cloud](https://app.terraform.io/session).

## Technologies Used

-   **Terraform**: For infrastructure provisioning and management (using Terraform Cloud for state management and remote execution).
-   **Ansible**: For configuration management and application deployment.
-   **Python**: For scripting and automating custom tasks.
-   **Bash/PowerShell**: For shell scripting as needed.
-   **CI/CD Tools**: GitHub Actions, Jenkins (planned for future exploration).

## Getting Started

### Prerequisites

To use this repository, you’ll need:

-   [Terraform](https://www.terraform.io/downloads.html) installed
-   A [Terraform Cloud](https://app.terraform.io/session) account for managing remote state
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

3. **Authenticate with Terraform Cloud** by logging in:

    ```bash
    terraform login
    ```

4. **Install Python dependencies** (if any):
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
