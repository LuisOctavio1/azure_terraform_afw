locals {
  name_prefix = "cmtr-y010np4n-mod9"
 

  firewall_name        =  format("%s-afw", local.name_prefix)
  firewall_subnet_name = "AzureFirewallSubnet"
  route_table_name     = format("%s-rt", local.name_prefix)

  common_tags = {
    Creator = "luis_torres2@epam.com"
  }
}