variable "access_list_api_keys" {
  description = <<EOT
Map of access_list_api_keys, attributes below
Required:
    - api_key_id
    - org_id
Optional:
    - cidr_block
    - ip_address
EOT

  type = map(object({
    api_key_id = string
    org_id     = string
    cidr_block = optional(string)
    ip_address = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

