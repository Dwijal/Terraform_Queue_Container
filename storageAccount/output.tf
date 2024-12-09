output "storageAccountName" {
  value = var.storage_account_name
}

output "rgname" {
  value = var.name
}

output "storageaccountid" {
  value=azurerm_storage_account.example.id
}