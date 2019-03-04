output "virtual_machine_public_ip" {
  description = "The public IP address of the virtual machine."
  value       = "${azurerm_public_ip.pip.ip_address}"
}

output "virtual_machine_admin_user" {
  description = "The admin username for the virtual machine."
  value       = "${var.vm_admin_username}"
}

output "virtual_machine_admin_password" {
  description = "The admin password for the virtual machine."
  value       = "${var.vm_admin_password}"
}



