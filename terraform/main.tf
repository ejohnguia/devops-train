resource "azapi_resource" "rg" {
  type     = "Microsoft.Resources/resourceGroups@2024-03-01"
  name     = var.rg.name
  location = var.rg.location
}

resource "azapi_resource" "vm" {
  type = "Microsoft.Compute/virtualMachines@2024-07-01"
  name = var.vm.name
  location = azapi_resource.rg.location
  parent_id = azapi_resource.rg.id


  body = {
    properties = {
      additionalCapabilities = {
        hibernationEnabled = bool
        ultraSSDEnabled = bool
      }
      applicationProfile = {
        galleryApplications = [
          {
            configurationReference = "string"
            enableAutomaticUpgrade = bool
            order = int
            packageReferenceId = "string"
            tags = "string"
            treatFailureAsDeploymentFailure = bool
          }
        ]
      }
      availabilitySet = {
        id = "string"
      }
      billingProfile = {
        maxPrice = "decimal-as-string"
      }
      capacityReservation = {
        capacityReservationGroup = {
          id = "string"
        }
      }
      diagnosticsProfile = {
        bootDiagnostics = {
          enabled = bool
          storageUri = "string"
        }
      }
      evictionPolicy = "string"
      extensionsTimeBudget = "string"
      hardwareProfile = {
        vmSize = "string"
        vmSizeProperties = {
          vCPUsAvailable = int
          vCPUsPerCore = int
        }
      }
      host = {
        id = "string"
      }
      hostGroup = {
        id = "string"
      }
      licenseType = "string"
      networkProfile = {
        networkApiVersion = "2020-11-01"
        networkInterfaceConfigurations = [
          {
            name = "string"
            properties = {
              auxiliaryMode = "string"
              auxiliarySku = "string"
              deleteOption = "string"
              disableTcpStateTracking = bool
              dnsSettings = {
                dnsServers = [
                  "string"
                ]
              }
              dscpConfiguration = {
                id = "string"
              }
              enableAcceleratedNetworking = bool
              enableFpga = bool
              enableIPForwarding = bool
              ipConfigurations = [
                {
                  name = "string"
                  properties = {
                    applicationGatewayBackendAddressPools = [
                      {
                        id = "string"
                      }
                    ]
                    applicationSecurityGroups = [
                      {
                        id = "string"
                      }
                    ]
                    loadBalancerBackendAddressPools = [
                      {
                        id = "string"
                      }
                    ]
                    primary = bool
                    privateIPAddressVersion = "string"
                    publicIPAddressConfiguration = {
                      name = "string"
                      properties = {
                        deleteOption = "string"
                        dnsSettings = {
                          domainNameLabel = "string"
                          domainNameLabelScope = "string"
                        }
                        idleTimeoutInMinutes = int
                        ipTags = [
                          {
                            ipTagType = "string"
                            tag = "string"
                          }
                        ]
                        publicIPAddressVersion = "string"
                        publicIPAllocationMethod = "string"
                        publicIPPrefix = {
                          id = "string"
                        }
                      }
                      sku = {
                        name = "string"
                        tier = "string"
                      }
                    }
                    subnet = {
                      id = "string"
                    }
                  }
                }
              ]
              networkSecurityGroup = {
                id = "string"
              }
              primary = bool
            }
          }
        ]
        networkInterfaces = [
          {
            id = "string"
            properties = {
              deleteOption = "string"
              primary = bool
            }
          }
        ]
      }
      osProfile = {
        adminPassword = "string"
        adminUsername = "string"
        allowExtensionOperations = bool
        computerName = "string"
        customData = "string"
        linuxConfiguration = {
          disablePasswordAuthentication = bool
          enableVMAgentPlatformUpdates = bool
          patchSettings = {
            assessmentMode = "string"
            automaticByPlatformSettings = {
              bypassPlatformSafetyChecksOnUserSchedule = bool
              rebootSetting = "string"
            }
            patchMode = "string"
          }
          provisionVMAgent = bool
          ssh = {
            publicKeys = [
              {
                keyData = "string"
                path = "string"
              }
            ]
          }
        }
        requireGuestProvisionSignal = bool
        secrets = [
          {
            sourceVault = {
              id = "string"
            }
            vaultCertificates = [
              {
                certificateStore = "string"
                certificateUrl = "string"
              }
            ]
          }
        ]
        windowsConfiguration = {
          additionalUnattendContent = [
            {
              componentName = "Microsoft-Windows-Shell-Setup"
              content = "string"
              passName = "OobeSystem"
              settingName = "string"
            }
          ]
          enableAutomaticUpdates = bool
          patchSettings = {
            assessmentMode = "string"
            automaticByPlatformSettings = {
              bypassPlatformSafetyChecksOnUserSchedule = bool
              rebootSetting = "string"
            }
            enableHotpatching = bool
            patchMode = "string"
          }
          provisionVMAgent = bool
          timeZone = "string"
          winRM = {
            listeners = [
              {
                certificateUrl = "string"
                protocol = "string"
              }
            ]
          }
        }
      }
      platformFaultDomain = int
      priority = "string"
      proximityPlacementGroup = {
        id = "string"
      }
      scheduledEventsPolicy = {
        scheduledEventsAdditionalPublishingTargets = {
          eventGridAndResourceGraph = {
            enable = bool
          }
        }
        userInitiatedReboot = {
          automaticallyApprove = bool
        }
        userInitiatedRedeploy = {
          automaticallyApprove = bool
        }
      }
      scheduledEventsProfile = {
        osImageNotificationProfile = {
          enable = bool
          notBeforeTimeout = "string"
        }
        terminateNotificationProfile = {
          enable = bool
          notBeforeTimeout = "string"
        }
      }
      securityProfile = {
        encryptionAtHost = bool
        encryptionIdentity = {
          userAssignedIdentityResourceId = "string"
        }
        proxyAgentSettings = {
          enabled = bool
          keyIncarnationId = int
          mode = "string"
        }
        securityType = "string"
        uefiSettings = {
          secureBootEnabled = bool
          vTpmEnabled = bool
        }
      }
      storageProfile = {
        dataDisks = [
          {
            caching = "string"
            createOption = "string"
            deleteOption = "string"
            detachOption = "ForceDetach"
            diskSizeGB = int
            image = {
              uri = "string"
            }
            lun = int
            managedDisk = {
              diskEncryptionSet = {
                id = "string"
              }
              id = "string"
              securityProfile = {
                diskEncryptionSet = {
                  id = "string"
                }
                securityEncryptionType = "string"
              }
              storageAccountType = "string"
            }
            name = "string"
            sourceResource = {
              id = "string"
            }
            toBeDetached = bool
            vhd = {
              uri = "string"
            }
            writeAcceleratorEnabled = bool
          }
        ]
        diskControllerType = "string"
        imageReference = {
          communityGalleryImageId = "string"
          id = "string"
          offer = "string"
          publisher = "string"
          sharedGalleryImageId = "string"
          sku = "string"
          version = "string"
        }
        osDisk = {
          caching = "string"
          createOption = "string"
          deleteOption = "string"
          diffDiskSettings = {
            option = "Local"
            placement = "string"
          }
          diskSizeGB = int
          encryptionSettings = {
            diskEncryptionKey = {
              secretUrl = "string"
              sourceVault = {
                id = "string"
              }
            }
            enabled = bool
            keyEncryptionKey = {
              keyUrl = "string"
              sourceVault = {
                id = "string"
              }
            }
          }
          image = {
            uri = "string"
          }
          managedDisk = {
            diskEncryptionSet = {
              id = "string"
            }
            id = "string"
            securityProfile = {
              diskEncryptionSet = {
                id = "string"
              }
              securityEncryptionType = "string"
            }
            storageAccountType = "string"
          }
          name = "string"
          osType = "string"
          vhd = {
            uri = "string"
          }
          writeAcceleratorEnabled = bool
        }
      }
      userData = "string"
      virtualMachineScaleSet = {
        id = "string"
      }
    }
    zones = [
      "string" or int
    ]
    extendedLocation = {
      name = "string"
      type = "EdgeZone"
    }
    plan = {
      name = "string"
      product = "string"
      promotionCode = "string"
      publisher = "string"
    }
  }
}