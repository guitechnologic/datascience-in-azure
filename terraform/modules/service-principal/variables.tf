variable "project_name" {
  description = "Nome do projeto"
  type        = string
}

variable "environment" {
  description = "Ambiente (lab, dev, prod)"
  type        = string
}

variable "resource_group_id" {
  description = "ID do Resource Group onde o SP terá permissão"
  type        = string
}
