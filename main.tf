resource "aws_opensearch_package" "opensearch_packages" {
  for_each = var.opensearch_packages

  package_name        = each.value.package_name
  package_type        = each.value.package_type
  engine_version      = each.value.engine_version
  package_description = each.value.package_description
  region              = each.value.region

  package_source {
    s3_bucket_name = each.value.package_source.s3_bucket_name
    s3_key         = each.value.package_source.s3_key
  }
}

