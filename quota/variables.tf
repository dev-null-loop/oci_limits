variable "compartment_id" {
  description = "(Required) The OCID of the compartment containing the resource this quota applies to."
  type        = string
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = null
}

variable "description" {
  description = "(Required) (Updatable) The description you assign to the quota."
  type        = string
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = {}
}

variable "locks" {
  description = "(Optional) Locks associated with this resource."
  type = list(object({
    message             = optional(string)
    related_resource_id = optional(string)
    type                = string
  }))
  default = []
}

variable "name" {
  description = "(Required) The name you assign to the quota during creation. The name must be unique across all quotas in the tenancy and cannot be changed."
  type        = string
}

variable "statements" {
  description = "(Required) (Updatable) An array of quota statements written in the declarative quota statement language."
  type        = list(string)
}
