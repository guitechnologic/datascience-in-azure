# Caminho: terraform/environments/prod/outputs.tf
output "resource_group_id" {
  value       = module.rg.id
  description = "ID do Resource Group criado"
}

output "vnet_id" {
  value       = module.network.vnet_id
  description = "ID da Virtual Network"
}

output "subnet_ids" {
  value       = module.network.subnet_ids
  description = "IDs das Subnets"
}

output "vm_id" {
  value       = module.vm.vm_id
  description = "ID da VM criada"
}

output "aks_cluster_id" {
  value       = module.aks.aks_id
  description = "ID do cluster AKS"
}
