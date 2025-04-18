variable "subscription_id" {
  description = "The subscription ID to use for the Azure provider."
  type        = string
}

variable "budget" {
  type = object({
    name       = string
    amount     = number
    time_grain = optional(string)
    start_date = string
    end_date   = optional(string)
  })
}

variable "filter_dimension" {
  description = "The filter dimension settings for the budget."
  type = list(object({
    name     = string
    operator = string
    values   = list(string)
  }))
  default = []
}

variable "filter_tag" {
  description = "The filter tag settings for the budget."
  type = list(object({
    name     = string
    operator = string
    values   = list(string)
  }))
  default = []
}

variable "notification" {
  description = "The notification settings for the budget."
  type = list(object({
    enabled        = optional(bool)
    threshold      = number
    threshold_type = optional(string)
    operator       = string
    contact_emails = optional(list(string))
    contact_groups = optional(list(string))
    contact_roles  = optional(list(string))
  }))
}
