output "devops_project_repository_settings_id" {
  description = "Map of id values across all devops_project_repository_settings, keyed the same as var.devops_project_repository_settings except keys with no id are omitted"
  value       = { for k, v in oci_devops_project_repository_setting.devops_project_repository_settings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "devops_project_repository_settings_approval_rules" {
  description = "Map of approval_rules values across all devops_project_repository_settings, keyed the same as var.devops_project_repository_settings except keys with no approval_rules are omitted"
  value       = { for k, v in oci_devops_project_repository_setting.devops_project_repository_settings : k => one(v.approval_rules) if v.approval_rules != null && length(v.approval_rules) > 0 }
}
output "devops_project_repository_settings_merge_settings" {
  description = "Map of merge_settings values across all devops_project_repository_settings, keyed the same as var.devops_project_repository_settings except keys with no merge_settings are omitted"
  value       = { for k, v in oci_devops_project_repository_setting.devops_project_repository_settings : k => one(v.merge_settings) if v.merge_settings != null && length(v.merge_settings) > 0 }
}
output "devops_project_repository_settings_project_id" {
  description = "Map of project_id values across all devops_project_repository_settings, keyed the same as var.devops_project_repository_settings except keys with no project_id are omitted"
  value       = { for k, v in oci_devops_project_repository_setting.devops_project_repository_settings : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}

