resource "azurerm_virtual_network" "vnet" {
    name = "vnet"
    address_space = ["10.0.0.0/16"]
    resource_group_name = "rg"
    location = "eastUS"
}


resource "azurerm_subnet" "subnet01" {
    name = "subnet01"
    resource_group_name = "rg"
    virtual_network_name = "azurerm_virtual_network.vnet.name"
    address_prefixes = ["10.0.1.0/24"]
}