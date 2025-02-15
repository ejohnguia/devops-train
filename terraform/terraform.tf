terraform {
  # required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      #   version = "~> 3.0"
    }
    http = {
      source = "hashicorp/http"
    }
    random = {
      source = "hashicorp/random"
    }
    local = {
      source = "hashicorp/local"
    }
    tls = {
      source = "hashicorp/tls"
    }
  }
}
