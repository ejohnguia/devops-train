output "budget_id" {
  description = "The ID of the created budget."
  value       = azurerm_consumption_budget_subscription.this.id
}

output "budget_name" {
  description = "The name of the budget."
  value       = azurerm_consumption_budget_subscription.this.name
}

output "budget_amount" {
  description = "The amount of the budget."
  value       = azurerm_consumption_budget_subscription.this.amount
}

output "budget_time_period" {
  description = "The time period for the budget."
  value = {
    start_date = azurerm_consumption_budget_subscription.this.time_period[0].start_date
    end_date   = azurerm_consumption_budget_subscription.this.time_period[0].end_date
  }
}

output "budget_notifications" {
  description = "The notification settings for the budget."
  value       = var.notification
}

output "budget_filter" {
  description = "The filter settings for the budget."
  value = {
    dimensions = var.filter_dimension
    tags       = var.filter_tag
  }
}
