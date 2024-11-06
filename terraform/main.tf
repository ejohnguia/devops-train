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
}


module "resource_group" {
  source = "./modules/resource_group"
  rg     = local.rg
}

module "network" {
  source = "./modules/network"
  vnet   = local.vnet
  nsg    = local.nsg
}
