#Create Resource Group

resource "azurerm_resource_group" "rg" {
  location = var.rg_location
  name     = "rg_${var.app_name}"
}

# Create virtual network
resource "azurerm_virtual_network" "vnet" {
  name                = "vnet_${var.app_name}"
  address_space       = ["10.1.0.0/16"]
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

# Create subnet
resource "azurerm_subnet" "subnet" {
  name                 = "subnet_${var.app_name}"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.1.0.0/24"]
}

# Call child Module to build a Windows VM
module "vm_module1" {
  for_each   = toset(["win1", "win2"])
  source    = "./modules/windowsvm"
  rg_name   = azurerm_resource_group.rg.name
  location  = azurerm_resource_group.rg.location
  subnet_id = azurerm_subnet.subnet.id
  vm_name   = each.key
}