output "fleet_integrations_id" {
  description = "Map of id values across all fleet_integrations, keyed the same as var.fleet_integrations except keys with no id are omitted"
  value       = { for k, v in elasticstack_fleet_integration.fleet_integrations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "fleet_integrations_force" {
  description = "Map of force values across all fleet_integrations, keyed the same as var.fleet_integrations except keys with no force are omitted"
  value       = { for k, v in elasticstack_fleet_integration.fleet_integrations : k => v.force if v.force != null }
}
output "fleet_integrations_ignore_constraints" {
  description = "Map of ignore_constraints values across all fleet_integrations, keyed the same as var.fleet_integrations except keys with no ignore_constraints are omitted"
  value       = { for k, v in elasticstack_fleet_integration.fleet_integrations : k => v.ignore_constraints if v.ignore_constraints != null }
}
output "fleet_integrations_ignore_mapping_update_errors" {
  description = "Map of ignore_mapping_update_errors values across all fleet_integrations, keyed the same as var.fleet_integrations except keys with no ignore_mapping_update_errors are omitted"
  value       = { for k, v in elasticstack_fleet_integration.fleet_integrations : k => v.ignore_mapping_update_errors if v.ignore_mapping_update_errors != null }
}
output "fleet_integrations_kibana_connection" {
  description = "Map of kibana_connection values across all fleet_integrations, keyed the same as var.fleet_integrations except keys with no kibana_connection are omitted"
  value       = { for k, v in elasticstack_fleet_integration.fleet_integrations : k => v.kibana_connection if v.kibana_connection != null && length(v.kibana_connection) > 0 }
  sensitive   = true
}
output "fleet_integrations_name" {
  description = "Map of name values across all fleet_integrations, keyed the same as var.fleet_integrations except keys with no name are omitted"
  value       = { for k, v in elasticstack_fleet_integration.fleet_integrations : k => v.name if v.name != null && length(v.name) > 0 }
}
output "fleet_integrations_prerelease" {
  description = "Map of prerelease values across all fleet_integrations, keyed the same as var.fleet_integrations except keys with no prerelease are omitted"
  value       = { for k, v in elasticstack_fleet_integration.fleet_integrations : k => v.prerelease if v.prerelease != null }
}
output "fleet_integrations_skip_data_stream_rollover" {
  description = "Map of skip_data_stream_rollover values across all fleet_integrations, keyed the same as var.fleet_integrations except keys with no skip_data_stream_rollover are omitted"
  value       = { for k, v in elasticstack_fleet_integration.fleet_integrations : k => v.skip_data_stream_rollover if v.skip_data_stream_rollover != null }
}
output "fleet_integrations_skip_destroy" {
  description = "Map of skip_destroy values across all fleet_integrations, keyed the same as var.fleet_integrations except keys with no skip_destroy are omitted"
  value       = { for k, v in elasticstack_fleet_integration.fleet_integrations : k => v.skip_destroy if v.skip_destroy != null }
}
output "fleet_integrations_space_id" {
  description = "Map of space_id values across all fleet_integrations, keyed the same as var.fleet_integrations except keys with no space_id are omitted"
  value       = { for k, v in elasticstack_fleet_integration.fleet_integrations : k => v.space_id if v.space_id != null && length(v.space_id) > 0 }
}
output "fleet_integrations_version" {
  description = "Map of version values across all fleet_integrations, keyed the same as var.fleet_integrations except keys with no version are omitted"
  value       = { for k, v in elasticstack_fleet_integration.fleet_integrations : k => v.version if v.version != null && length(v.version) > 0 }
}

