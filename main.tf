# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

#ajout d'une ressource
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = "francecentral"
  
   tags = {
     Environment = "Terraform Getting Started"
     Team = "Datacom"
   }
}
# Create a virtual network
resource "azurerm_virtual_network" "vnet" {
    name                = "myTFVnet"
    address_space       = ["10.1.0.0/24"]
    location            = "francecentral"
    resource_group_name = azurerm_resource_group.rg.name
}
