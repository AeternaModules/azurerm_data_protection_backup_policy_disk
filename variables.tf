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
  validation {
    condition = alltrue([
      for k, v in var.data_protection_backup_policy_disks : (
        can(regex("^[-a-zA-Z0-9]{3,150}$", v.name))
      )
    ])
    error_message = "DataProtection BackupPolicy name must be 3 - 150 characters long, contain only letters, numbers and hyphens."
  }
  validation {
    condition = alltrue([
      for k, v in var.data_protection_backup_policy_disks : (
        v.time_zone == null || (length(v.time_zone) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_data_protection_backup_policy_disk's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: vault_id
  #   source:    [from basebackuppolicyresources.ValidateBackupVaultID] !ok
  # path: vault_id
  #   source:    [from basebackuppolicyresources.ValidateBackupVaultID] err != nil
  # path: default_retention_duration
  #   source:    [from helperValidate.ISO8601Duration] !ok
  # path: default_retention_duration
  #   source:    [from helperValidate.ISO8601Duration] err != nil
  # path: retention_rule.duration
  #   source:    [from helperValidate.ISO8601Duration] !ok
  # path: retention_rule.duration
  #   source:    [from helperValidate.ISO8601Duration] err != nil
  # path: retention_rule.criteria.absolute_criteria
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
}

