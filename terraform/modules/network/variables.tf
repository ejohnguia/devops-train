variable "vnet" {
  description = "Virtual Network for the deployment"
  type = object({
    name      = string
    location  = string
    parent_id = string
  })
}
