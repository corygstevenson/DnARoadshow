# Create a new azure app service plan, new resource group called "roadshow-rg" in "eastus2" region and a app service called "roadshow-app" in the resource group

# create a new resource group
resource "azurerm_resource_group" "rg" {
  name     = "roadshow-rg"
  location = "eastus2"
}

# create a new app service plan
resource "azurerm_app_service_plan" "asp" {
  name                = "roadshow-asp"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  sku {
    tier = "Standard"
    size = "S1"
  }
}

# create a new app service
resource "azurerm_app_service" "app" {
  name                = "roadshow-app"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.asp.id
}
