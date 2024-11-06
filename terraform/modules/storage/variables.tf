variable "rg" {
  description = "Resource Group for the deployment"
  type = object({
    name     = string
    location = string
  })
}
