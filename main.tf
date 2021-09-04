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
  name     = var.resource_group_name
  location = "northeurope"
}

resource "azurerm_virtual_network" "vnet" {
  name                = "myTFVnet"
  address_space       = ["10.0.0.0/16"]
  location            = var.resource_group_location
  resource_group_name = azurerm_resource_group.res_group.name
}