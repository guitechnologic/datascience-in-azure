output "aks_id" { value = azurerm_kubernetes_cluster.this.id }
output "kube_config" { value = azurerm_kubernetes_cluster.this.kube_admin_config_raw }
