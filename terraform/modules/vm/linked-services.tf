resource "azurerm_data_factory_linked_service_web" "ibge" {
  name            = "LS_IBGE_API"
  data_factory_id = azurerm_data_factory.this.id

  url = "https://servicodados.ibge.gov.br"

  authentication_type = "Anonymous"
}

resource "azurerm_data_factory_linked_service_data_lake_storage_gen2" "adls" {
  name            = "LS_ADLS_GEN2"
  data_factory_id = azurerm_data_factory.this.id

  url = "https://${var.storage_account_name}.dfs.core.windows.net"
  use_managed_identity = true
}
