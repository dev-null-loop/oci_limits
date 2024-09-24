resource "oci_limits_quota" "this" {
  compartment_id = var.compartment_id
  description    = var.description
  name           = var.name
  statements     = var.statements
  defined_tags   = var.defined_tags
  freeform_tags  = var.freeform_tags
  dynamic "locks" {
    for_each = var.locks[*]
    content {
      type                = locks.value.type
      message             = locks.value.message
      related_resource_id = locks.value.related_resource_id
    }
  }
}
