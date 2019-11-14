# Use vnet module
module "local_module" {
  source = "./local_module"
  rg_name= azurerm_resource_group.local_rg.name
}

# Configure the Azure Provider
provider "azurerm" {}

# Create a resource group
resource "azurerm_resource_group" "local_rg" {
  location = var.location
  name = "${var.prefix}_rg"
}