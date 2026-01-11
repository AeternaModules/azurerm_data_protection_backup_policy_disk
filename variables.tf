variable "data_protection_backup_policy_disks" {
  description = <<EOT
Map of data_protection_backup_policy_disks, attributes below
Required:
    - backup_repeating_time_intervals
    - default_retention_duration
    - name
    - vault_id
Optional:
    - time_zone
    - retention_rule (block):
        - criteria (required, block):
            - absolute_criteria (optional)
        - duration (required)
        - name (required)
        - priority (required)
EOT

  type = map(object({
    backup_repeating_time_intervals = list(string)
    default_retention_duration      = string
    name                            = string
    vault_id                        = string
    time_zone                       = optional(string)
    retention_rule = optional(object({
      criteria = object({
        absolute_criteria = optional(string)
      })
      duration = string
      name     = string
      priority = number
    }))
  }))
}

