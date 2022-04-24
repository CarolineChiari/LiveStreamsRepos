terraform {
  backend "azurerm" {}
  # backend "local" {
  #   path = "./main.tfstate"
  # }
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
#   storage_use_azuread = true
}