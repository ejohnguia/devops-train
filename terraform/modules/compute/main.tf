resource "azapi_resource" "virtual_machine" {
  type      = "Microsoft.Compute/virtualMachines@2024-07-01"
  name      = "example-vm"
  location  = azapi_resource.rg.location
  parent_id = azapi_resource.rg.id

  identity {
    type         = "SystemAssigned"
    identity_ids = []
  }

  body = {
    properties = {
      hardwareProfile = {
        vmSize = "Standard_B1s"
      }
      osProfile = {
        computerName  = "example-vm"
        adminUsername = "adminuser"
        adminPassword = "P@ssword1234!"
      }
      networkProfile = {
        networkInterfaces = [
          {
            id = "example-nic-id"
          }
        ]
      }
      storageProfile = {
        osDisk = {
          createOption = "FromImage"
          managedDisk = {
            storageAccountType = "Standard_LRS"
          }
          name       = "example-os-disk"
          diskSizeGB = 30
        }
        imageReference = {
          publisher = "Canonical"
          offer     = "UbuntuServer"
          sku       = "18.04-LTS"
          version   = "latest"
        }
      }
    }
    zones = ["1"]
  }
}