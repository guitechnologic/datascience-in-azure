output "application_id" {
  value       = azuread_application.this.application_id
  description = "Application (Client) ID"
}

output "service_principal_object_id" {
  value       = azuread_service_principal.this.object_id
  description = "Object ID do Service Principal"
}

module "service_principal" {
  source = "../../modules/service-principal"

  project_name      = var.project_name
  environment       = var.environment
  resource_group_id = module.resource_group.resource_group_id
}
