data "azurerm_key_vault" "key_vault" {
  name                = "terraform-vault001"
  resource_group_name = "remote-state-rg"
}

data "azurerm_key_vault_secret" "admin_password" {
  name         = "deployAzMachinePw"
  key_vault_id = data.azurerm_key_vault.key_vault.id
}
