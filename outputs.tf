output "data_protection_backup_policy_disks" {
  description = "All data_protection_backup_policy_disk resources"
  value       = azurerm_data_protection_backup_policy_disk.data_protection_backup_policy_disks
}
output "data_protection_backup_policy_disks_backup_repeating_time_intervals" {
  description = "List of backup_repeating_time_intervals values across all data_protection_backup_policy_disks"
  value       = [for k, v in azurerm_data_protection_backup_policy_disk.data_protection_backup_policy_disks : v.backup_repeating_time_intervals]
}
output "data_protection_backup_policy_disks_default_retention_duration" {
  description = "List of default_retention_duration values across all data_protection_backup_policy_disks"
  value       = [for k, v in azurerm_data_protection_backup_policy_disk.data_protection_backup_policy_disks : v.default_retention_duration]
}
output "data_protection_backup_policy_disks_name" {
  description = "List of name values across all data_protection_backup_policy_disks"
  value       = [for k, v in azurerm_data_protection_backup_policy_disk.data_protection_backup_policy_disks : v.name]
}
output "data_protection_backup_policy_disks_retention_rule" {
  description = "List of retention_rule values across all data_protection_backup_policy_disks"
  value       = [for k, v in azurerm_data_protection_backup_policy_disk.data_protection_backup_policy_disks : v.retention_rule]
}
output "data_protection_backup_policy_disks_time_zone" {
  description = "List of time_zone values across all data_protection_backup_policy_disks"
  value       = [for k, v in azurerm_data_protection_backup_policy_disk.data_protection_backup_policy_disks : v.time_zone]
}
output "data_protection_backup_policy_disks_vault_id" {
  description = "List of vault_id values across all data_protection_backup_policy_disks"
  value       = [for k, v in azurerm_data_protection_backup_policy_disk.data_protection_backup_policy_disks : v.vault_id]
}

