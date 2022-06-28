resource "azurerm_key_vault" "kv" {
  name                        = var.res_kv_name
  location                    = var.res_location
  resource_group_name         = var.res_rg_name
  enabled_for_disk_encryption = var.res_disk_encryption
  tenant_id                   = var.res_tenant_id
  sku_name                    = "standard"
  tags                        = var.res_tags
}