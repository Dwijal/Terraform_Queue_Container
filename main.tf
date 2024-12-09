

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.13.0"
    }
  }
}

provider "azurerm" {
  # Configuration options

  features {
    #This block is must , complusary.
  }
  #Using service principal authentication.


}

module "storageAccount" {
  source = "./storageAccount"
  #resouce group
  name = var.name
  location = var.location
  #storage account
  storage_account_name = var.storage_account_name
  account_tier = var.account_tier
  account_replication_type = var.account_replication_type
}

module "queue" {
  source = "./queue"
  storage_account_name = module.storageAccount.storageAccountName
  queuenames = var.queuenames
  rgname=module.storageAccount.rgname
  depends_on = [ module.storageAccount ]
}

module "containers" {
  source = "./containers"
  storagecontainers=var.storagecontainers
  storage_account_id = module.storageAccount.storageaccountid
  container_access_type = var.container_access_type
  rgname = module.storageAccount.rgname
 depends_on = [ module.storageAccount ]
}








