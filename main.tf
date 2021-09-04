terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.65"
    }
  }


  backend "remote" {
    organization = "dozhicorp"
    workspaces {
      name = "MyriadLands"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "res_group" {
  name     = "TestResourceGroupRemoteState"
  location = "northeurope"
}