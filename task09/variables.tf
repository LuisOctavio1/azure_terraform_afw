variable "resource_group_name" {
  description = "Name of the existing resource group"
  type        = string
  default     = "cmtr-y010np4n-mod9-rg"
}

variable "location" {
  description = "Azure region for resources"
  type        = string
  default     = "East US 2"
}

variable "vnet_name" {
  description = "Name of the existing virtual network"
  type        = string
  default     = "cmtr-y010np4n-mod9-vnet"
}

variable "aks_subnet_name" {
  description = "Name of the existing AKS subnet"
  type        = string
  default     = "aks-snet"
}

variable "firewall_pip_name" {
  description = "Name of the firewall public IP"
  type        = string
  default     = "cmtr-y010np4n-mod9-pip"
}

variable "aks_loadbalancer_ip" {
  description = "Public IP address of the AKS load balancer"
  type        = string
}