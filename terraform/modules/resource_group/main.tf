resource "azapi_resource" "rg" {
  type     = "Microsoft.Resources/resourceGroups@2024-03-01"
  name     = var.rg.name
  location = var.rg.location
}

