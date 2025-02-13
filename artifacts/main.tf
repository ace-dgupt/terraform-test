terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.7.0"
    }
  }

  # Update this block with the location of your terraform state file
  backend "azurerm" {
    resource_group_name  = "rg-deploy-resources"
    storage_account_name = "blobstateterraform"
    container_name       = "test1"
    key                  = "terraform.tfstate"
    use_oidc             = true
  }
}

provider "azurerm" {
  features {}
  use_oidc        = true
  subscription_id = "c3d75eff-262d-4d2e-8733-d9f0705554fd"
}


# Define Azure resources to be Created

resource "azurerm_storage_account" "st_blob" {
  account_replication_type = "LRS"
  account_tier             = "Standard"
  is_hns_enabled           = true
  location                 = var.location
  name                     = var.st_blob_name
  resource_group_name      = var.resource_group_name
}