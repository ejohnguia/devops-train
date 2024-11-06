locals {
  rg = {
    name     = "my-rg"
    location = "canadacentral"
  }
  vnet = {
    name      = "my-vnet"
    location  = "canadacentral"
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
}
