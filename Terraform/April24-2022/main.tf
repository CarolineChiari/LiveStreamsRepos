terraform {
  backend "azurerm" {}
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "= 3.0.0"
    }
  }
  required_version = ">= 1.1.5"
}

provider "azurerm" {
  features {}
}

# Create a new resource group for our resources
resource "azurerm_resource_group" "myRG" {
  name     = "${var.prefix}MyResourceGroup"
  location = "eastus"
}