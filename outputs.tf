output "resource_group_id" {
  description = "The resource ID of the demo resource group."
  value       = azurerm_resource_group.demo.id
}

output "resource_group_name" {
  description = "The name of the demo resource group."
  value       = azurerm_resource_group.demo.name
}
