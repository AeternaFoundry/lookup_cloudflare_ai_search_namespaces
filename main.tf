data "cloudflare_ai_search_namespaces" "ai_search_namespaces_lookup" {
  for_each = var.ai_search_namespaces_lookup

  account_id = each.value.account_id
  max_items  = each.value.max_items
  search     = each.value.search
}

