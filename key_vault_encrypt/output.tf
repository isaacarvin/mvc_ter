# Outputs: Key Vault Secret
output "res_out_kv_sec_id" {
  value = azurerm_key_vault_secret.secret.id
}

output "res_out_kv_sec_version" {
  value = azurerm_key_vault_secret.secret.version
}

output "res_out_kv_key_id" {
  value = azurerm_key_vault_key.key.id
}

output "res_out_kv_key_version" {
  value = azurerm_key_vault_key.key.version
}