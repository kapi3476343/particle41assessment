resource "azurerm_virtual_network" "vpc" {
  name                = var.vpc_name
  address_space       = ["10.0.0.0/16"]
  location            = var.location
  resource_group_name = var.resource_group_name
}

resource "azurerm_subnet" "public" {
  count                = length(var.public_subnets)
  name                 = "public-subnet-${count.index}"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vpc.name
  address_prefixes     = [var.public_subnets[count.index]]
}

resource "azurerm_subnet" "private" {
  count                = length(var.private_subnets)
  name                 = "private-subnet-${count.index}"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vpc.name
  address_prefixes     = [var.private_subnets[count.index]]
}
