locals {
  location = "canadacentral"
  rg = {
    name     = "my-rg"
    location = local.location
  }
  vnet = {
    name      = "my-vnet"
    location  = local.location
    parent_id = module.resource_group.id
  }

  nsg = {
    name      = "my-nsg"
    location  = local.location
    parent_id = module.resource_group.id
  }

  nic = {
    name      = "my-nic"
    location  = local.location
    parent_id = module.resource_group.id
  }

  os_disk = {
    name      = "my-os-disk"
    location  = local.location
    parent_id = module.resource_group.id
  }
}


module "resource_group" {
  source = "./modules/resource_group"
  rg     = local.rg
}

module "network" {
  source = "./modules/network"
  vnet   = local.vnet
  nsg    = local.nsg
  # nic    = local.nic
}

module "os_disk" {
  source          = "./modules/storage"
  os_disk         = local.os_disk
  subscription_id = var.subscription_id
}
