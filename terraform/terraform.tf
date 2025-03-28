# terraform {
#   # required_version = ">= 1.0.0"
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "~> 5.0"
#     }
#     http = {
#       source  = "hashicorp/http"
#       version = "~> 3.0"
#     }
#     random = {
#       source  = "hashicorp/random"
#       version = "~> 3.0"
#     }
#     local = {
#       source  = "hashicorp/local"
#       version = "~> 2.0"
#     }
#     tls = {
#       source  = "hashicorp/tls"
#       version = "~> 4.0"
#     }
#   }
# }

terraform {
  # backend "s3" {
  # }

  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "blusnowy-learn-terraform"
    workspaces {
      name = "my-workspace"
    }
  }

  # backend "local" {
  #   path = "terraform.tfstate"
  # }

  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
    http = {
      source  = "hashicorp/http"
      version = "2.1.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.1.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.1.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "3.1.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.57.0"
    }
  }
}
