resource "azapi_resource" "myvm_vnet" {
  type      = "Microsoft.Network/virtualNetworks@2024-03-01"
  name      = var.vnet.name
  location  = "canadacentral"
  parent_id = var.vnet.parent_id
  body = {
    properties = {
      addressSpace = {
        addressPrefixes = [
          "10.12.0.0/16"
        ]
      }
      subnets = [
        {
          name = "default"
          properties = {
            addressPrefix                     = "10.12.0.0/24"
            delegations                       = []
            privateEndpointNetworkPolicies    = "Disabled"
            privateLinkServiceNetworkPolicies = "Enabled"
          }
          type = "Microsoft.Network/virtualNetworks/subnets"
        }
      ]
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
