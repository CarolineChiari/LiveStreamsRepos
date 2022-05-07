resource "azurerm_storage_account" "mySA" {
  name                     = "${var.prefix}carolinesa"
  resource_group_name      = azurerm_resource_group.myRG.name
  location                 = azurerm_resource_group.myRG.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

module "missionCriticalStorage" {
  source             = "./modules/missionCriticalStorage"
  storageAccountName = "carolinemasa"
  RGName             = azurerm_resource_group.myRG.name
  RGLocation         = azurerm_resource_group.myRG.location
}