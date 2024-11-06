resource "azapi_resource" "vnet" {
  type      = "Microsoft.Network/virtualNetworks@2024-03-01"
  name      = var.vnet.name
  location  = "canadacentral"
  parent_id = var.vnet.parent_id
  body = {
    properties = {
      addressSpace = {
        addressPrefixes = ["10.12.0.0/16"]
      }
      virtualNetworkPeerings = []
      enableDdosProtection   = false
    }
  }
}

resource "azapi_resource" "nsg" {
  type      = "Microsoft.Network/networkSecurityGroups@2024-03-01"
  name      = var.nsg.name
  location  = var.nsg.location
  parent_id = var.nsg.parent_id

  body = {
    properties = {
      securityRules = [
        {
          name = "SSH"
          type = "Microsoft.Network/networkSecurityGroups/securityRules"
          properties = {
            protocol                   = "TCP"
            sourcePortRange            = "*"
            destinationPortRange       = "22"
            sourceAddressPrefix        = "*"
            destinationAddressPrefix   = "*"
            access                     = "Allow"
            priority                   = 300
            direction                  = "Inbound"
            sourcePortRanges           = []
            destinationPortRanges      = []
            sourceAddressPrefixes      = []
            destinationAddressPrefixes = []
          }
        }
      ]
    }
  }
}

resource "azapi_resource" "subnet" {
  type      = "Microsoft.Network/virtualNetworks/subnets@2024-03-01"
  name      = "my-subnet"
  parent_id = azapi_resource.vnet.id
  body = {
    properties = {
      addressPrefix = "10.12.0.0/24"
    }
  }
}

resource "azapi_resource" "nic" {
  type      = "Microsoft.Network/networkInterfaces@2024-03-01"
  name      = var.nic.name
  location  = var.nic.location
  parent_id = var.nic.parent_id
  body = {
    properties = {
      ipConfigurations = [
        {
          name = "ipconfig1"
          type = "Microsoft.Network/networkInterfaces/ipConfigurations"
          properties = {
            privateIPAddress          = "10.12.0.4"
            privateIPAllocationMethod = "Dynamic"
            privateIPAddressVersion   = "IPv4"
            primary                   = true
            subnet = {
              id = azapi_resource.subnet.id
            }
          }
        }
      ]
    }
  }
}
