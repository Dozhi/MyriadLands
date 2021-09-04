output "resource_group_id" {
	value = azurerm_resource_group.res_group.id
}

output "resource_vnet_id" {
  value = azurerm_virtual_network.vnet.id
}