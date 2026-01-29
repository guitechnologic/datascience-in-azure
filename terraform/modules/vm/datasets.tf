resource "azurerm_data_factory_dataset_http" "ibge_municipios" {
  name                = "DS_IBGE_MUNICIPIOS"
  data_factory_id     = azurerm_data_factory.this.id
  linked_service_name = azurerm_data_factory_linked_service_web.ibge.name

  relative_url   = "/api/v1/localidades/municipios"
  request_method = "GET"
}

resource "azurerm_data_factory_dataset_json" "ibge_raw" {
  name                = "DS_IBGE_RAW"
  data_factory_id     = azurerm_data_factory.this.id
  linked_service_name = azurerm_data_factory_linked_service_data_lake_storage_gen2.adls.name

  azure_blob_storage_location {
    container = "raw"
    path      = "ibge/municipios"
    filename  = "municipios.json"
  }
}
