
# task09/modules/afw/variables.tf
variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region for resources"
  type        = string
}

variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
}

variable "aks_subnet_name" {
  description = "Name of the AKS subnet"
  type        = string
}

variable "firewall_name" {
  description = "Name of the Azure Firewall"
  type        = string
}

variable "firewall_pip_name" {
  description = "Name of the firewall public IP"
  type        = string
}

variable "firewall_subnet_name" {
  description = "Name of the firewall subnet"
  type        = string
  default     = "AzureFirewallSubnet"
}

variable "route_table_name" {
  description = "Name of the route table"
  type        = string
}

variable "aks_loadbalancer_ip" {
  description = "Public IP address of the AKS load balancer"
  type        = string
}

variable "common_tags" {
  description = "Common tags to be applied to all resources"
  type        = map(string)
  default     = {}
}

variable "aks_name" {
  description = "aks name"
  type        = string
}