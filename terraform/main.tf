locals {
  rg = {
    name     = "my-rg"
    location = "canadacentral"
  }
}


module "resource_group" {
  source = "./modules/resource_group"
  rg     = local.rg
}
