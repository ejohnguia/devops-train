terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

module "budget" {
  source          = "../"
  subscription_id = var.subscription_id

  budget = {
    name       = "example-budget"
    amount     = 1000
    time_grain = "Monthly"
    start_date = "2023-01-01"
    end_date   = "2023-12-31"
  }

  notification = [
    {
      threshold = 80
      operator  = "GreaterThan"
    }
  ]

}
