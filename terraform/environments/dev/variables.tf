variable "rg_name" {}
variable "location" {}
variable "tags" {
  type = map(string)
}

variable "vnet_name" {}
variable "address_space" {}
variable "subnet_prefixes" {
  type = list(string)
}

variable "vm_name" {}
variable "vm_size" {}
variable "admin_username" {}
variable "ssh_key" {}

variable "aks_name" {}
variable "node_count" {}
variable "node_vm_size" {}
