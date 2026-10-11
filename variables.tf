variable "ai_search_namespaces_lookup" {
  description = <<EOT
Map of ai_search_namespaces_lookup, attributes below
Required:
    - account_id
Optional:
    - max_items
    - search
EOT

  type = map(object({
    account_id = string
    max_items  = optional(number)
    search     = optional(string)
  }))
}

