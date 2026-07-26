module "resource_group" {
  source = "../../Module/azurerm_resource_group"
  rgs    = var.resource_groups

}

module "virtual_network" {
  source = "../../Module/azurerm_virtual_network"
  vnets  = var.virtual_networks

  depends_on = [module.resource_group]

}

module "subnet" {
  source  = "../../Module/azurerm_subnet"
  subnets = var.azure_subnets

  depends_on = [module.resource_group, module.virtual_network]

}