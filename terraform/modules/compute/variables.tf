variable "vm" {
  description = "Virtual Machine for the deployment"
  type        = map(string)
  default = {
    name = "my-vm"
  }
}
