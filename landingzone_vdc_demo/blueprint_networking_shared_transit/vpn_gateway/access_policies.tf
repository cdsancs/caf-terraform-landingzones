data "azurerm_client_config" "current" {}

resource "azurerm_key_vault_access_policy" "akv_policy1" {
 
  key_vault_id = var.keyvaultid

  tenant_id = data.azurerm_client_config.current.tenant_id
  object_id = data.azurerm_client_config.current.object_id

  key_permissions = []

  secret_permissions = [
    "set",
    "get",
    "delete",
  ]
}

