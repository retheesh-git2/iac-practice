variable "vm_name" {
  type        = string
  description = "Name of the Virtual Machine."
}
 
variable "rg_name" {
  type        = string
  description = "Name of the Existing Resource Group."
}
 
variable "location" {
  type        = string
  description = "Azure Region for the VM to be created."
  default = "eastus"
}
 
variable "vm_size" {
  type        = string
  description = "Size of the Virtual Machine."
  default = "Standard_B1s"
}
 
variable "image_publisher" {
  type        = string
  description = "Operating System image publisher."
  default = "MicrosoftWindowsServer"
}
 
variable "image_offer" {
  type        = string
  description = "Operating System image publisher."
  default = "WindowsServer"
}
 
variable "image_sku" {
  type        = string
  description = "Operating System image publisher."
  default =  "2019-Datacenter"
}
 
variable "subnet_id" {
  type        = string
  description = "Subnet ID of existing Subnet."
}