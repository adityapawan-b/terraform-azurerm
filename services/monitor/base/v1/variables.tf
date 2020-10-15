variable "context" {
  type = object({
    application_name    = string
    environment_name    = string
    resource_group_name = string
    location            = string
    location_suffix     = string
  })
}

variable "custom_rules_settings" {
    type = object({
        name                = string
        scopes              = list(string)
        description         = string
        metric_namespace    = string
        metric_name         = string
        aggregation         = string
        operator            = string
        threshold           = string
        dimensions_name     = string
        dimensions_operator = string
        values              = list(string)
        action_group_id     = string
    })
}