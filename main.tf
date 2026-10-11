resource "elasticstack_fleet_integration" "fleet_integrations" {
  for_each = var.fleet_integrations

  name                         = each.value.name
  version                      = each.value.version
  force                        = each.value.force
  ignore_constraints           = each.value.ignore_constraints
  ignore_mapping_update_errors = each.value.ignore_mapping_update_errors
  prerelease                   = each.value.prerelease
  skip_data_stream_rollover    = each.value.skip_data_stream_rollover
  skip_destroy                 = each.value.skip_destroy
  space_id                     = each.value.space_id
  timeouts                     = each.value.timeouts

  dynamic "kibana_connection" {
    for_each = each.value.kibana_connection != null ? each.value.kibana_connection : []
    content {
      api_key      = kibana_connection.value.api_key
      bearer_token = kibana_connection.value.bearer_token
      ca_certs     = kibana_connection.value.ca_certs
      endpoints    = kibana_connection.value.endpoints
      insecure     = kibana_connection.value.insecure
      password     = kibana_connection.value.password
      username     = kibana_connection.value.username
    }
  }
}

