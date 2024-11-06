variable "rg" {
  description = "Resource Group for the deployment"
  type        = map(string)
  default = {
    name     = "my-rg"
    location = "canadacentral"
  }
}

variable "vm" {
  description = "Virtual Machine for the deployment"
  type        = map(string)
  default = {
    name = "my-vm"
  }
}
