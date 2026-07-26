resource_groups = {
  rg1 = {
    name     = "rg-dev-07"
    location = "Central India"
  }

  rg2 = {
    name     = "rg-dev-08"
    location = "Central India"
  }
}

virtual_networks = {
  vnet1 = {
    name                = "vnet-dev-07"
    resource_group_name = "rg-dev-07"
    location            = "Central India"
    address_space       = ["10.0.0.0/16"]
  }

  vnet2 = {
    name                = "vnet-dev-08"
    resource_group_name = "rg-dev-07"
    location            = "Central India"
    address_space       = ["10.0.0.0/16"]
  }

}

azure_subnets = {
  subnet1 = {
    name                 = "subnet-dev-07"
    virtual_network_name = "vnet-dev-07"
    resource_group_name  = "rg-dev-07"
    address_prefixes     = ["10.0.1.0/24"]

  }
  subnet2 = {
    name                 = "subnet-dev-08"
    virtual_network_name = "vnet-dev-07"
    resource_group_name  = "rg-dev-07"
    address_prefixes     = ["10.0.2.0/24"]

  }

  subnet3 = {
    name                 = "AzureBastionSubnet"
    virtual_network_name = "vnet-dev-07"
    resource_group_name  = "rg-dev-07"
    address_prefixes     = ["10.0.3.0/26"]

  }
}