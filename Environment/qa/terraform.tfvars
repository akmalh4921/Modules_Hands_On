resource_groups = {
  rg1 = {
    name     = "rg-qa-07"
    location = "Central India"
  }

  rg2 = {
    name     = "rg-qa-08"
    location = "Central India"
  }
}

virtual_networks = {
  vnet1 = {
    name                = "vnet-qa-07"
    resource_group_name = "rg-qa-07"
    location            = "Central India"
    address_space       = ["10.0.0.0/16"]
  }

  vnet2 = {
    name                = "vnet-qa-08"
    resource_group_name = "rg-qa-07"
    location            = "Central India"
    address_space       = ["10.0.0.0/16"]
  }

}

azure_subnets = {
  subnet1 = {
    name                 = "subnet-qa-07"
    virtual_network_name = "vnet-qa-07"
    resource_group_name  = "rg-qa-07"
    address_prefixes     = ["10.0.1.0/24"]

  }
  subnet2 = {
    name                 = "subnet-qa-08"
    virtual_network_name = "vnet-qa-07"
    resource_group_name  = "rg-qa-07"
    address_prefixes     = ["10.0.2.0/24"]

  }

  subnet3 = {
    name                 = "AzureBastionSubnet"
    virtual_network_name = "vnet-qa-07"
    resource_group_name  = "rg-qa-07"
    address_prefixes     = ["10.0.3.0/26"]

  }
}