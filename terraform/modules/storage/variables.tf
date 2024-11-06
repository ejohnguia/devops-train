variable "subscription_id" {
  description = "Subscription ID for the deployment"
  type        = string
}

variable "os_disk" {
  description = "OS Disk for the deployment"
  type = object({
    name      = string
    location  = string
    parent_id = string
  })
}
