output vm_name {
    value = azurerm_windows_virtual_machine.windows_vm.name
}

output vm_ip {
    value = azurerm_windows_virtual_machine.windows_vm.private_ip_address
}


