# Resource: Network Security Group (NSG)
resource "azurerm_network_security_group" "nsg" {
  name                = var.res_nsg_name
  location            = var.res_location
  resource_group_name = var.res_vnet_rg_name
  tags                = var.res_tags
}

# Resource: Network Security Group Rules (NSG Rules)
resource "azurerm_network_security_rule" "nsg_rules" {
  count                       = length(var.res_nsg_rules)
  name                        = element(var.res_nsg_rules[count.index], 0)
  resource_group_name         = var.res_vnet_rg_name
  network_security_group_name = azurerm_network_security_group.nsg.name
  protocol                    = element(var.res_nsg_rules[count.index], 1)
  source_port_range           = element(var.res_nsg_rules[count.index], 2)
  destination_port_range      = element(var.res_nsg_rules[count.index], 3)
  source_address_prefix       = element(var.res_nsg_rules[count.index], 4)
  destination_address_prefix  = element(var.res_nsg_rules[count.index], 5)
  direction                   = element(var.res_nsg_rules[count.index], 6)
  priority                    = element(var.res_nsg_rules[count.index], 7)
  access                      = element(var.res_nsg_rules[count.index], 8)
}