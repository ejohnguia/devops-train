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
