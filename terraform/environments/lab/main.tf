module "resource_group" {
  source = "../../modules/resource-group"

  project_name = var.project_name
  environment  = var.environment
  location     = var.location
}

module "storage_account" {
  source = "../../modules/storage-account"

  name                = "dsa${var.environment}001"
  resource_group_name = module.resource_group.name
  location            = var.location

  tags = {
    project     = var.project_name
    environment = var.environment
    managed_by  = "terraform"
  }
}

module "datalake_raw" {
  source = "../../modules/datalake-filesystem"

  name               = "raw"
  storage_account_id = module.storage_account.id
}

module "datalake_processed" {
  source = "../../modules/datalake-filesystem"

  name               = "processed"
  storage_account_id = module.storage_account.id
}

module "datalake_curated" {
  source = "../../modules/datalake-filesystem"

  name               = "curated"
  storage_account_id = module.storage_account.id
}

module "data_factory" {
  source = "../../modules/data-factory"

  project_name        = var.project_name
  environment         = var.environment
  location            = var.location
  resource_group_name = module.resource_group.name

  tags = {
    project     = var.project_name
    environment = var.environment
    managed_by  = "terraform"
  }
}
