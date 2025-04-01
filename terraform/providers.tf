terraform {
  required_version = ">=1.3.9"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.47.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = ">=2.9.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "a90938fc-21d0-4f36-80a8-c4c901d3d2d1"
}

