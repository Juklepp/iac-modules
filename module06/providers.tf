terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.6.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-backend-tfstate-jk"  # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
    storage_account_name = "sabetfsjkustm87h2u8"                      # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "sc-backend-tfstate-jk"                       # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "webtest.terraform.tfstate"        # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}

provider "azurerm" {
  subscription_id = "3291a0d9-96b5-41ee-9b93-5b28b419919f"
  features {}
}