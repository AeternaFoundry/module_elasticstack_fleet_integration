variable "fleet_integrations" {
  description = <<EOT
Map of fleet_integrations, attributes below
Required:
    - name
    - version
Optional:
    - force
    - ignore_constraints
    - ignore_mapping_update_errors
    - prerelease
    - skip_data_stream_rollover
    - skip_destroy
    - space_id
    - timeouts
    - kibana_connection (block):
        - api_key (optional)
        - bearer_token (optional)
        - ca_certs (optional)
        - endpoints (optional)
        - insecure (optional)
        - password (optional)
        - username (optional)
EOT

  type = map(object({
    name                         = string
    version                      = string
    force                        = optional(bool)
    ignore_constraints           = optional(bool)
    ignore_mapping_update_errors = optional(bool)
    prerelease                   = optional(bool)
    skip_data_stream_rollover    = optional(bool)
    skip_destroy                 = optional(bool)
    space_id                     = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
    kibana_connection = optional(list(object({
      api_key      = optional(string)
      bearer_token = optional(string)
      ca_certs     = optional(list(string))
      endpoints    = optional(list(string))
      insecure     = optional(bool)
      password     = optional(string)
      username     = optional(string)
    })))
  }))
}

