output "id" {
  description = "The OCID of the quota."
  value       = oci_limits_quota.this.id
}

output "is_lock_override" {
  description = "Whether lock override is enabled for the quota."
  value       = oci_limits_quota.this.is_lock_override
}

output "state" {
  description = "The current state of the quota."
  value       = oci_limits_quota.this.state
}

output "time_created" {
  description = "The date and time the quota was created, expressed in RFC 3339 timestamp format."
  value       = oci_limits_quota.this.time_created
}
