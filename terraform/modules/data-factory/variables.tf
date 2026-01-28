variable "project_name" {
  type        = string
  description = "Nome do projeto"
}

variable "environment" {
  type        = string
  description = "Ambiente (lab, dev, prod)"
}

variable "location" {
  type        = string
  description = "Região Azure"
}

variable "resource_group_name" {
  type        = string
  description = "Resource Group do Data Factory"
}

variable "tags" {
  type        = map(string)
  default     = {}
}
