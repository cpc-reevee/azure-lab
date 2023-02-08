resource "azurerm_network_security_group" "hashilab" {
  name                = "${var.prefix}-sg"
  location            = azurerm_resource_group.resource-rg.location
  resource_group_name = azurerm_resource_group.resource-rg.name

  security_rule {
    name                       = "HTTP"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "80"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  security_rule {
    name                       = "HTTPS"
    priority                   = 102
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "443"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  security_rule {
    name                       = "SSH"
    priority                   = 101
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

resource "azurerm_network_interface" "hashilab" {
  name                = "${var.prefix}-nic"
  location            = azurerm_resource_group.resource-rg.location
  resource_group_name = azurerm_resource_group.resource-rg.name

  ip_configuration {
    name                          = "${var.prefix}ipconfig"
    subnet_id                     = azurerm_subnet.hashilab.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.hashilab.id
  }
}

resource "azurerm_network_interface_security_group_association" "hashilab" {
  network_interface_id      = azurerm_network_interface.hashilab.id
  network_security_group_id = azurerm_network_security_group.hashilab.id
}

resource "azurerm_public_ip" "hashilab" {
  name                = "${var.prefix}-ip"
  location            = azurerm_resource_group.resource-rg.location
  resource_group_name = azurerm_resource_group.resource-rg.name
  allocation_method   = "Dynamic"
  domain_name_label   = "${var.prefix}-app"
}
