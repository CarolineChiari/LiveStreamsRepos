
resource "azurerm_storage_account" "MCSA" {
  name                     = "mc${var.storageAccountName}"
  resource_group_name      = var.RGName
  location                 = var.RGLocation
  account_tier             = "Standard"
  account_replication_type = "GRS"
}