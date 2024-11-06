resource "azapi_resource" "nic" {
  type     = "Microsoft.Network/networkInterfaces@2024-03-01"
  name     = "example-nic"
  location = azapi_resource.rg.location
}

resource "azapi_resource" "symbolicname" {
  type = "Microsoft.Network/virtualNetworks/subnets@2024-03-01"
  name = "string"
}

resource "azurerm_virtual_network" "example" {
  name                = "example-vnet"
  location            = azapi_resource.rg.location
  resource_group_name = azapi_resource.rg.name
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "example" {
  name                 = "example-subnet"
  resource_group_name  = azapi_resource.rg.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = ["10.0.2.0/24"]
}

resource "azurerm_public_ip" "example" {
  name                = "example-pip"
  location            = var.rg.location
  resource_group_name = azapi_resource.rg.name
  allocation_method   = "Dynamic"
}
