output "access_list_api_keys_id" {
  description = "Map of id values across all access_list_api_keys, keyed the same as var.access_list_api_keys except keys with no id are omitted"
  value       = { for k, v in mongodbatlas_access_list_api_key.access_list_api_keys : k => v.id if v.id != null && length(v.id) > 0 }
}
output "access_list_api_keys_api_key_id" {
  description = "Map of api_key_id values across all access_list_api_keys, keyed the same as var.access_list_api_keys except keys with no api_key_id are omitted"
  value       = { for k, v in mongodbatlas_access_list_api_key.access_list_api_keys : k => v.api_key_id if v.api_key_id != null && length(v.api_key_id) > 0 }
}
output "access_list_api_keys_cidr_block" {
  description = "Map of cidr_block values across all access_list_api_keys, keyed the same as var.access_list_api_keys except keys with no cidr_block are omitted"
  value       = { for k, v in mongodbatlas_access_list_api_key.access_list_api_keys : k => v.cidr_block if v.cidr_block != null && length(v.cidr_block) > 0 }
}
output "access_list_api_keys_ip_address" {
  description = "Map of ip_address values across all access_list_api_keys, keyed the same as var.access_list_api_keys except keys with no ip_address are omitted"
  value       = { for k, v in mongodbatlas_access_list_api_key.access_list_api_keys : k => v.ip_address if v.ip_address != null && length(v.ip_address) > 0 }
}
output "access_list_api_keys_org_id" {
  description = "Map of org_id values across all access_list_api_keys, keyed the same as var.access_list_api_keys except keys with no org_id are omitted"
  value       = { for k, v in mongodbatlas_access_list_api_key.access_list_api_keys : k => v.org_id if v.org_id != null && length(v.org_id) > 0 }
}

