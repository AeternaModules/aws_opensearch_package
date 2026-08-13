output "opensearch_packages_id" {
  description = "Map of id values across all opensearch_packages, keyed the same as var.opensearch_packages"
  value       = { for k, v in aws_opensearch_package.opensearch_packages : k => v.id if v.id != null && length(v.id) > 0 }
}
output "opensearch_packages_available_package_version" {
  description = "Map of available_package_version values across all opensearch_packages, keyed the same as var.opensearch_packages"
  value       = { for k, v in aws_opensearch_package.opensearch_packages : k => v.available_package_version if v.available_package_version != null && length(v.available_package_version) > 0 }
}
output "opensearch_packages_engine_version" {
  description = "Map of engine_version values across all opensearch_packages, keyed the same as var.opensearch_packages"
  value       = { for k, v in aws_opensearch_package.opensearch_packages : k => v.engine_version if v.engine_version != null && length(v.engine_version) > 0 }
}
output "opensearch_packages_package_description" {
  description = "Map of package_description values across all opensearch_packages, keyed the same as var.opensearch_packages"
  value       = { for k, v in aws_opensearch_package.opensearch_packages : k => v.package_description if v.package_description != null && length(v.package_description) > 0 }
}
output "opensearch_packages_package_id" {
  description = "Map of package_id values across all opensearch_packages, keyed the same as var.opensearch_packages"
  value       = { for k, v in aws_opensearch_package.opensearch_packages : k => v.package_id if v.package_id != null && length(v.package_id) > 0 }
}
output "opensearch_packages_package_name" {
  description = "Map of package_name values across all opensearch_packages, keyed the same as var.opensearch_packages"
  value       = { for k, v in aws_opensearch_package.opensearch_packages : k => v.package_name if v.package_name != null && length(v.package_name) > 0 }
}
output "opensearch_packages_package_source" {
  description = "Map of package_source values across all opensearch_packages, keyed the same as var.opensearch_packages"
  value       = { for k, v in aws_opensearch_package.opensearch_packages : k => v.package_source if v.package_source != null && length(v.package_source) > 0 }
}
output "opensearch_packages_package_type" {
  description = "Map of package_type values across all opensearch_packages, keyed the same as var.opensearch_packages"
  value       = { for k, v in aws_opensearch_package.opensearch_packages : k => v.package_type if v.package_type != null && length(v.package_type) > 0 }
}
output "opensearch_packages_region" {
  description = "Map of region values across all opensearch_packages, keyed the same as var.opensearch_packages"
  value       = { for k, v in aws_opensearch_package.opensearch_packages : k => v.region if v.region != null && length(v.region) > 0 }
}

