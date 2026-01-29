resource "azurerm_data_factory" "this" {
  name                = "${var.project_name}-${var.environment}-adf"
  location            = var.location
  resource_group_name = var.resource_group_name

  identity {
    type = "SystemAssigned"
  }

  tags = var.tags
}
