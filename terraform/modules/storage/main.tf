resource "azapi_resource" "storage" {
  type      = "Microsoft.Compute/disks@2024-03-02"
  name      = var.os_disk.name
  location  = var.os_disk.location
  parent_id = var.os_disk.parent_id

  body = {
    properties = {
      osType              = "Linux"
      hyperVGeneration    = "V2"
      supportsHibernation = true
      supportedCapabilities = {
        diskControllerTypes = "SCSI, NVMe"
        acceleratedNetwork  = true
        architecture        = "x64"
      }
      creationData = {
        createOption = "FromImage"
        imageReference = {
          id = "/subscriptions/${var.subscription_id}/providers/Microsoft.Compute/locations/canadacentral/publishers/canonical/artifactTypes/VMImage/offers/ubuntu-24_04-lts/skus/server/versions/24.04.202411030"
        }
      }
      diskSizeGB        = 30
      diskIOPSReadWrite = 500
      diskMBpsReadWrite = 100
      encryption = {
        type = "EncryptionAtRestWithPlatformKey"
      }
      networkAccessPolicy = "AllowAll"
      publicNetworkAccess = "Enabled"
    }
    sku = {
      name = "StandardSSD_LRS"
      # tier = "Standard"
    }
    # extendedLocation = {
    #   name = "string"
    #   type = "EdgeZone"
    # }
  }
}
