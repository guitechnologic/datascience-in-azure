variable "project_name" {
  description = "Nome do projeto"
  type        = string
}

variable "environment" {
  description = "Ambiente (lab, dev, prod)"
  type        = string
}

variable "location" {
  description = "Região Azure"
  type        = string
  default     = "eastus"
}
