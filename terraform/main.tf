resource "azapi_resource" "rg" {
  type     = "Microsoft.Resources/resourceGroups@2024-03-01"
  name     = "my-rg"
  location = "canadacentral"
}
