resource "azurerm_data_factory_pipeline" "ingest_ibge" {
  name            = "PL_INGEST_IBGE_MUNICIPIOS"
  data_factory_id = azurerm_data_factory.this.id

  activities_json = jsonencode([
    {
      name = "Copy_IBGE_to_RAW"
      type = "Copy"
      typeProperties = {
        source = {
          type = "RestSource"
        }
        sink = {
          type = "JsonSink"
        }
      }
      inputs = [
        {
          referenceName = azurerm_data_factory_dataset_http.ibge_municipios.name
          type          = "DatasetReference"
        }
      ]
      outputs = [
        {
          referenceName = azurerm_data_factory_dataset_json.ibge_raw.name
          type          = "DatasetReference"
        }
      ]
    }
  ])
}
