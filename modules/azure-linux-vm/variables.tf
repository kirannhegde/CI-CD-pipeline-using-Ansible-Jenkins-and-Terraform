# Module specific variables can be defined here, in addition to the global variables
# Please note that the global variables need to be defined here as well, at each module level.

variable "vm_type" { }
variable "location" {}
variable "resource_group_name" { default = "rg" }
variable "vnet_cidr" { default = ["172.20.0.0/16"]}
variable "subnet_cidr" {}
variable "virtual_machine_size" { default = "Basic_A1" }
variable "public_ip_name" {default = "public-ip"}
variable "virtual_network_name" { default = "vnet" }
variable "subnet_name" { default = "subnet" }
variable "network_security_group_name" { default = "nsg"}
variable "network_interface_name" {default = "nic"}
variable "storage_account_name" { default = "storage"}
variable "container_name" { default = "vhds" }
variable "virtual_machine_name" { default = "vm" }
variable "vm_admin_username" {}
variable "vm_admin_password" {}
variable "virtual_machine_osdisk_name" {default = "disk"}
variable "virtual_machine_osdisk_type" {default = "Standard_LRS"}