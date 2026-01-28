variable "name" {
  description = "Nome do Storage Account"
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "account_tier" {
  type    = string
  default = "Standard"
}

variable "account_replication_type" {
  type    = string
  default = "LRS"
}

variable "enable_hns" {
  description = "Hierarchical Namespace (Data Lake Gen2)"
  type        = bool
  default     = true
}

variable "tags" {
  type    = map(string)
  default = {}
}
