terraform {
  backend "azurerm" {
    resource_group_name  = "remote-state-rg"
    storage_account_name = "remotestatestor001"
    container_name       = "remotestate"
    key                  = "dev.tfstate"
  }
}
