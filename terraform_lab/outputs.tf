output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}
 
output "vm_ip_address" {
  value = azurerm_windows_virtual_machine.windows_vm.private_ip_address
}