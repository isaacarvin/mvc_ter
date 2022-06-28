output "res_out_routes_ids" {
  value = azurerm_route.routes.*.id
}