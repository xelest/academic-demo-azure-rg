resource "azurerm_resource_group" "demo" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

resource "azurerm_resource_group" "demo2" {
  name     = "rg-demo2"
  location = "westus"
  tags     = var.tags
}
# 

