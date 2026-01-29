# Caminho: terraform/environments/prod/terraform.tfvars
# Preencha de acordo com a produção
rg_name      = "iac-prod-rg"
location     = "eastus"
tags         = { environment = "prod", project = "iac" }

vnet_name    = "iac-prod-vnet"
address_space = ["10.1.0.0/16"]
subnets = [
  { name = "subnet1", prefix = "10.1.1.0/24" },
  { name = "subnet2", prefix = "10.1.2.0/24" }
]

vm_name      = "iac-prod-vm"
vm_size      = "Standard_B2s"
admin_username = "azureuser"
ssh_key      = "<coloque sua chave SSH pública aqui>"

aks_name     = "iac-prod-aks"
aks_dns_prefix = "iac-prod-aks"
k8s_version  = "1.28.2"
node_count   = 2
node_vm_size = "Standard_B2s"
