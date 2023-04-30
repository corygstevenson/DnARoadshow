resource "azurerm_resource_group" "cgstestrg" {
  name     = "cgstestrg"
  location = "eastus"
}
# create a virtual network
resource "azurerm_virtual_network" "cgstestvnet" {
  name                = "cgstestvnet"
  address_space       = ["10.0.0.0/16"]
    location            = azurerm_resource_group.cgstestrg.location
    resource_group_name = azurerm_resource_group.cgstestrg.name
}
# create a subnet
resource "azurerm_subnet" "cgstestsubnet" {
  name                 = "cgstestsubnet"
  resource_group_name  = azurerm_resource_group.cgstestrg.name
  virtual_network_name = azurerm_virtual_network.cgstestvnet.name
  address_prefixes     = ["10.0.1.0/24"]
}
# create a network security group
resource "azurerm_network_security_group" "cgstestnsg" {
  name                = "cgstestnsg"
  location            = azurerm_resource_group.cgstestrg.location
  resource_group_name = azurerm_resource_group.cgstestrg.name
  security_rule {
    name                       = "RDP"
    priority                   = 1000
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "3389"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
  security_rule {
    name                       = "web"
    priority                   = 1001
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "80"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}
# STOP DEMO HERE