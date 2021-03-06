resource "azurerm_monitor_activity_log_alert" "main" {
  name                = var.custom_rules_settings.name
  resource_group_name = var.context.resource_group_name
  scopes              = var.custom_rules_settings.scopes
  description         = var.custom_rules_settings.description

  criteria {
    category          = var.custom_rules_settings.category
    level             = var.custom_rules_settings.level
    status            = var.custom_rules_settings.status
    sub_status        = var.custom_rules_settings.sub_status
    
  }

  action {
    action_group_id   = var.custom_rules_settings.action_group_id

  }
}