output "ai_search_namespaces_lookup_account_id" {
  description = "Map of account_id values across all ai_search_namespaces_lookup, keyed the same as var.ai_search_namespaces_lookup except keys with no account_id are omitted"
  value       = { for k, v in data.cloudflare_ai_search_namespaces.ai_search_namespaces_lookup : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "ai_search_namespaces_lookup_max_items" {
  description = "Map of max_items values across all ai_search_namespaces_lookup, keyed the same as var.ai_search_namespaces_lookup except keys with no max_items are omitted"
  value       = { for k, v in data.cloudflare_ai_search_namespaces.ai_search_namespaces_lookup : k => v.max_items if v.max_items != null }
}
output "ai_search_namespaces_lookup_result" {
  description = "Map of result values across all ai_search_namespaces_lookup, keyed the same as var.ai_search_namespaces_lookup except keys with no result are omitted"
  value       = { for k, v in data.cloudflare_ai_search_namespaces.ai_search_namespaces_lookup : k => v.result if v.result != null && length(v.result) > 0 }
}
output "ai_search_namespaces_lookup_search" {
  description = "Map of search values across all ai_search_namespaces_lookup, keyed the same as var.ai_search_namespaces_lookup except keys with no search are omitted"
  value       = { for k, v in data.cloudflare_ai_search_namespaces.ai_search_namespaces_lookup : k => v.search if v.search != null && length(v.search) > 0 }
}

