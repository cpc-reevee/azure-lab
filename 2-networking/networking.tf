locals {
  timestamp = timestamp()
  tags = {
    environment = var.env
    department  = var.department
    owner       = var.owner
    application = "${var.prefix} website"
  }
}

resource "azurerm_virtual_network" "hashilab" {
  name                = "${var.prefix}-vnet"
  location            = azurerm_resource_group.resource-rg.location
  address_space       = [var.address_space]
  resource_group_name = azurerm_resource_group.resource-rg.name
}

resource "azurerm_subnet" "hashilab" {
  name                 = "${var.prefix}-subnet"
  virtual_network_name = azurerm_virtual_network.hashilab.name
  resource_group_name  = azurerm_resource_group.resource-rg.name
  address_prefixes     = [var.subnet_prefix]
}
