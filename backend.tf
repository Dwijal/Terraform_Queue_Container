terraform {
  backend "azurerm" {
    resource_group_name  = "dwigroup"
    storage_account_name = "dwistorage"
    container_name       = "tfstate"
    key                  = "terraform-qa.tfstate"


  }
}
