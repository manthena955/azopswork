terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.32.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {}
  subscription_id = "04c386d7-1bae-44ea-bbf3-83f9390cdb65"
}


resource "azurerm_resource_group" "example" {
  name     = "${var.prefix}-resources"
  location = "eastus"
}