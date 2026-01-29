variable "scope_id" {
  type        = string
  description = "Scope ID for role assignment (RG, Subscription, Resource)"
}

variable "role_name" {
  type        = string
  description = "Role name, e.g., Contributor, Owner"
}

variable "principal_id" {
  type        = string
  description = "Principal ID to assign the role (User, SPN, Managed Identity)"
}
