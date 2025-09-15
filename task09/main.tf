module "afw" {
  source = "./modules/afw"

  resource_group_name  = var.resource_group_name
  location             = var.location
  vnet_name            = var.vnet_name
  aks_subnet_name      = var.aks_subnet_name
  firewall_name        = local.firewall_name
  firewall_pip_name    = var.firewall_pip_name
  firewall_subnet_name = local.firewall_subnet_name
  route_table_name     = local.route_table_name
  aks_loadbalancer_ip  = var.aks_loadbalancer_ip
  common_tags          = local.common_tags
  aks_name             = var.aks_name
  nsg_rule_name        = var.nsg_rule_name
  nat_rule_name        = var.nat_rule_name
  net_rules_name       = var.net_rules_name
  app_rule_name        = var.app_rule_name
}