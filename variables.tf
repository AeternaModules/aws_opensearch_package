variable "opensearch_packages" {
  description = <<EOT
Map of opensearch_packages, attributes below
Required:
    - package_name
    - package_type
    - package_source (block):
        - s3_bucket_name (required)
        - s3_key (required)
Optional:
    - engine_version
    - package_description
    - region
EOT

  type = map(object({
    package_name        = string
    package_type        = string
    engine_version      = optional(string)
    package_description = optional(string)
    region              = optional(string)
    package_source = object({
      s3_bucket_name = string
      s3_key         = string
    })
  }))
  validation {
    condition = alltrue([
      for k, v in var.opensearch_packages : (
        length(v.package_name) >= 1 && length(v.package_name) <= 32
      )
    ])
    error_message = "must be between 1 and 32 characters"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

