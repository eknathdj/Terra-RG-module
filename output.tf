# Output name of the resource group created, useful for creating other resources
output "rg_name" {
  value       = azurerm_resource_group.az_rg.name
  description = "Name of the resource group"
}

# Output Resource Group ID
output "rg_id" {
  value       = azurerm_resource_group.az_rg.id
  description = "ID of the Resource Group"
}

# Output Resource Group Location
output "rg_location" {
  value       = azurerm_resource_group.az_rg.location
  description = "Current location of the Resource Group"
}
