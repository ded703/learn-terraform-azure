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
resource "azurerm_resource_group" "terraform-cloud" {
  name     = "TERRAFORM_ESSA"
  location = "francecentral"
}
