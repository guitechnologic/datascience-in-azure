resource "azuread_application" "this" {
  display_name = "${var.project_name}-${var.environment}-app"
}

resource "azuread_service_principal" "this" {
  application_id = azuread_application.this.application_id
}

resource "azurerm_role_assignment" "this" {
  scope                = var.resource_group_id
  role_definition_name = "Contributor"
  principal_id         = azuread_service_principal.this.object_id
}
