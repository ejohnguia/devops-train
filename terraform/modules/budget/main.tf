# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/consumption_budget_subscription

resource "azurerm_consumption_budget_subscription" "this" {
  name            = var.budget.name
  subscription_id = var.subscription_id

  amount     = var.budget.amount
  time_grain = var.budget.time_grain

  time_period {
    start_date = var.budget.start_date
    end_date   = var.budget.end_date
  }

  filter {

    dynamic "dimension" {
      for_each = var.filter_dimension
      content {
        name     = dimension.value.name
        operator = dimension.value.operator
        values   = dimension.value.values
      }
    }

    dynamic "tag" {
      for_each = var.filter_tag
      content {
        name     = tag.value.name
        operator = tag.value.operator
        values   = tag.value.values
      }
    }

  }

  dynamic "notification" {
    for_each = var.notification

    content {
      enabled        = notification.value.enabled
      threshold      = notification.value.threshold
      threshold_type = notification.value.threshold_type
      operator       = notification.value.operator
      contact_emails = notification.value.contact_emails
      contact_groups = notification.value.contact_groups
      contact_roles  = notification.value.contact_roles
    }
  }
}
