terraform {
  required_providers {
    azapi = {
      source = "azure/azapi"
    }
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
}

provider "azapi" {
  default_location = "canadacentral"
}

provider "azurerm" {
  features {}
}
