resource "oci_limits_quota" "this" {
  compartment_id = var.compartment_id
  description    = var.description
  name           = var.name
  statements     = var.statements
  defined_tags   = var.defined_tags
  freeform_tags  = var.freeform_tags
  locks {
    type                = var.quota_locks_type
    message             = var.quota_locks_message
    related_resource_id = oci_limits_related_resource.test_related_resource.id
  }
}
