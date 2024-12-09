

resource "azurerm_storage_queue" "example" {
  for_each = var.queuenames
  name                 = "${var.rgname}-${each.value}"
  storage_account_name = var.storage_account_name
}


