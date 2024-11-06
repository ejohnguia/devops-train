variable "subscription_id" {
  description = "Subscription ID for the deployment"
  type        = string
}

variable "vnet" {
  description = "Virtual Network for the deployment"
  type = object({
    name      = string
    location  = string
    parent_id = string
  })
}

variable "nsg" {
  description = "Network Security Group for the deployment"
  type = object({
    name      = string
    location  = string
    parent_id = string
  })
}

variable "nic" {
  description = "Network Interface for the deployment"
  type = object({
    name      = string
    location  = string
    parent_id = string
  })
}
