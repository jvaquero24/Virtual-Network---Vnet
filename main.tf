data "azurerm_resource_group" "RG" {
  name = var.resource_group_name
}

resource "azurerm_virtual_network" "VNET" {
  name                = var.vnet_name
  location            = var.location
  resource_group_name = data.azurerm_resource_group.RG.name
  address_space       = var.address_space

  subnet {
    name           = var.name_subnet_1
    address_prefix = var.IPsubnet_1
  }

  subnet {
    name           = var.name_subnet_2
    address_prefix = var.IPsubnet_2
  }  
}
