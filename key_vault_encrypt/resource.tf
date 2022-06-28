# Resource: Key Vault Secret
resource "random_string" "secret" {
  length = 25
}

resource "azurerm_key_vault_secret" "secret" {
  name         = var.res_kvsec_name
  value        = random_string.secret.result
  key_vault_id = var.res_kv_uri
}

resource "azurerm_key_vault_key" "key" {
  name         = var.res_kvsec_name
  key_vault_id = var.res_kv_uri
  key_type     = "RSA"
  key_size     = 2048

  key_opts = [
    "sign",
    "verify",
  ]
}
