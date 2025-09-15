locals {
  firewall_subnet_cidr = "10.0.1.0/24"
  application_rules = [
    {
      name = "allow-aks-essential"
      source_addresses = ["10.0.0.0/24"]
      target_fqdns = [
        "*.azmk8s.io",
        "mcr.microsoft.com",
        "*.cdn.mscr.io"
      ]
      protocols = [
        {
          port = "443"
          type = "Https"
        }
      ]
    }
  ]
  
  network_rules = [
    {
      name = "allow-dns"
      source_addresses = ["10.0.0.0/24"]
      destination_ports = ["53"]
      destination_addresses = ["*"]
      protocols = ["UDP"]
    }
  ]
  
  nat_rules = [
    {
      name = "nginx-access"
      source_addresses = ["*"]
      destination_ports = ["80"]
      destination_addresses = [azurerm_public_ip.firewall.ip_address]
      translated_address = var.aks_loadbalancer_ip
      translated_port = "80"
      protocols = ["TCP"]
    }
  ]
}