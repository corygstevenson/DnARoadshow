# Create a new resource group called "roadshow-rg" in "eastus2" region with an app service plan, a linux funcation app and a storage account.

# create a resource group
resource "azurerm_resource_group" "rg" {
  name     = "roadshow-rg"
  location = "eastus2"
}

#create a storage account
resource "azurerm_storage_account" "sa" {
  name                     = "roadshowsa"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# create an app service plan
resource "azurerm_app_service_plan" "asp" {
  name                = "roadshow-asp"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  sku {
    tier = "Standard"
    size = "S1"
  }
}

# create a function app
resource "azurerm_function_app" "app" {
  name                = "roadshow-app"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.asp.id
  storage_account_name = azurerm_storage_account.sa.name
  storage_account_access_key = azurerm_storage_account.sa.primary_access_key
  os_type = "linux"
  version = "~3"
  app_settings = {
    "FUNCTIONS_WORKER_RUNTIME" = "python"
    "FUNCTIONS_EXTENSION_VERSION" = "~3"
    "WEBSITE_RUN_FROM_PACKAGE" = ""
  }
}