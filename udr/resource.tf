
# Resource: User Defined Route
resource "azurerm_route" "routes" {
  count                  = length(var.res_udr_routes)
  name                   = (var.res_udr_routes[count.index]).0
  address_prefix         = (var.res_udr_routes[count.index]).1
  next_hop_type          = (var.res_udr_routes[count.index]).2
  next_hop_in_ip_address = (var.res_udr_routes[count.index]).3
  resource_group_name    = var.res_vnet_rg_name
  route_table_name       = var.res_rt_name
}