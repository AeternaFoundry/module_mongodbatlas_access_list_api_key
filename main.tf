resource "mongodbatlas_access_list_api_key" "access_list_api_keys" {
  for_each = var.access_list_api_keys

  api_key_id = each.value.api_key_id
  org_id     = each.value.org_id
  cidr_block = each.value.cidr_block
  ip_address = each.value.ip_address
}

