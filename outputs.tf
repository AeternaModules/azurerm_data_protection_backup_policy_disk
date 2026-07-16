output "data_protection_backup_policy_disks_id" {
  description = "Map of id values across all data_protection_backup_policy_disks, keyed the same as var.data_protection_backup_policy_disks"
  value       = { for k, v in azurerm_data_protection_backup_policy_disk.data_protection_backup_policy_disks : k => v.id if v.id != null && length(v.id) > 0 }
}
output "data_protection_backup_policy_disks_backup_repeating_time_intervals" {
  description = "Map of backup_repeating_time_intervals values across all data_protection_backup_policy_disks, keyed the same as var.data_protection_backup_policy_disks"
  value       = { for k, v in azurerm_data_protection_backup_policy_disk.data_protection_backup_policy_disks : k => v.backup_repeating_time_intervals if v.backup_repeating_time_intervals != null && length(v.backup_repeating_time_intervals) > 0 }
}
output "data_protection_backup_policy_disks_default_retention_duration" {
  description = "Map of default_retention_duration values across all data_protection_backup_policy_disks, keyed the same as var.data_protection_backup_policy_disks"
  value       = { for k, v in azurerm_data_protection_backup_policy_disk.data_protection_backup_policy_disks : k => v.default_retention_duration if v.default_retention_duration != null && length(v.default_retention_duration) > 0 }
}
output "data_protection_backup_policy_disks_name" {
  description = "Map of name values across all data_protection_backup_policy_disks, keyed the same as var.data_protection_backup_policy_disks"
  value       = { for k, v in azurerm_data_protection_backup_policy_disk.data_protection_backup_policy_disks : k => v.name if v.name != null && length(v.name) > 0 }
}
output "data_protection_backup_policy_disks_retention_rule" {
  description = "Map of retention_rule values across all data_protection_backup_policy_disks, keyed the same as var.data_protection_backup_policy_disks"
  value       = { for k, v in azurerm_data_protection_backup_policy_disk.data_protection_backup_policy_disks : k => v.retention_rule if v.retention_rule != null && length(v.retention_rule) > 0 }
}
output "data_protection_backup_policy_disks_time_zone" {
  description = "Map of time_zone values across all data_protection_backup_policy_disks, keyed the same as var.data_protection_backup_policy_disks"
  value       = { for k, v in azurerm_data_protection_backup_policy_disk.data_protection_backup_policy_disks : k => v.time_zone if v.time_zone != null && length(v.time_zone) > 0 }
}
output "data_protection_backup_policy_disks_vault_id" {
  description = "Map of vault_id values across all data_protection_backup_policy_disks, keyed the same as var.data_protection_backup_policy_disks"
  value       = { for k, v in azurerm_data_protection_backup_policy_disk.data_protection_backup_policy_disks : k => v.vault_id if v.vault_id != null && length(v.vault_id) > 0 }
}

