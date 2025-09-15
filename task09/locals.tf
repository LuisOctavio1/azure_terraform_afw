locals {
  name_prefix = "cmtr-y010np4n-mod9"

  firewall_name        = "${local.name_prefix}-afw"
  firewall_subnet_name = "AzureFirewallSubnet"
  route_table_name     = "${local.name_prefix}-rt"

  common_tags = {
    Creator = "luis_torres2@epam.com"
  }
}