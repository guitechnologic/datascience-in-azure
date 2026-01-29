# Caminho: terraform/environments/prod/variables.tf
variable "rg_name" {}
variable "location" {}
variable "tags" {
  type = map(string)
}

variable "vnet_name" {}
variable "address_space" {
  type = list(string)
}
variable "subnets" {
  type = list(object({
    name   = string
    prefix = string
  }))
}

variable "vm_name" {}
variable "vm_size" {}
variable "admin_username" {}
variable "ssh_key" {}

variable "aks_name" {}
variable "aks_dns_prefix" {}
variable "k8s_version" {}
variable "node_count" {}
variable "node_vm_size" {}
