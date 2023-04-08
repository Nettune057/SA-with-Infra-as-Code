resource "azurerm_resource_group" "task1" {
  name     = var.azurerm_resource_group
  location = var.region
}

resource "azurerm_storage_account" "task" {
  name = var.azurerm_storage_account
  resource_group_name = azurerm_resource_group.task1.name
  location = azurerm_resource_group.task1.location
  account_tier = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_table" "terraform" {
  name                = var.tfstate_forlock
  storage_account_name = azurerm_storage_account.task.name
}

resource "azurerm_storage_container" "task" {
  name = var.storage_table
  storage_account_name = azurerm_storage_account.task.name
  container_access_type = "private"
}
