terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "= 2.78"
    }
  }

  required_version = ">= 1.0.8"

  #NB: These values may be different depending on your setup.
  # See docs/Infrastructure.md
  backend "azurerm" {
    resource_group_name  = "Demo-TF"
    storage_account_name = "k8sdemoterraform"
    container_name       = "terraform-backend"
    key                  = "dev.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}
