#Keep the global variables at the "root" module level

provider "azurerm" {
  subscription_id        = "${var.subscription_id}"
  client_id              = "${var.client_id}"
  client_secret          = "${var.client_secret}"
  tenant_id              = "${var.tenant_id}"
}

# Variables for Azure service principal

variable "subscription_id" {}
variable "client_id" {}
variable "client_secret" {}
variable "tenant_id" {}

# Variables
variable "location" {}
variable "vnet_cidr" { default = ["172.20.0.0/16"]}
variable "virtual_machine_size" { default = "Basic_A1" }
variable "public_ip_name" {default = "public-ip"}
variable "virtual_network_name" { default = "vnet" }
variable "subnet_name" { default = "subnet" }
variable "network_security_group_name" { default = "nsg"}
variable "network_interface_name" {default = "nic"}
variable "storage_account_name" { default = "storage"}
variable "container_name" { default = "vhds" }
variable "virtual_machine_name" { default = "vm" }
variable "virtual_machine_osdisk_name" {default = "disk"}
variable "virtual_machine_osdisk_type" {default = "Standard_LRS"}

