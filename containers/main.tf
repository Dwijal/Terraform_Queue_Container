


resource "azurerm_storage_container" "example" {
  for_each=var.storagecontainers  
  name                  = "${var.rgname}-${each.value}"
  storage_account_id    = var.storage_account_id
  container_access_type = var.container_access_type
}

