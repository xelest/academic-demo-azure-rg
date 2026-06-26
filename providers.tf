terraform {
  required_version = "~> 1.14.8"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

# Terraform Cloud supplies Azure credentials through workspace environment variables.
provider "azurerm" {
  features {}
}

# terraform {
#   backend "remote" {
#     hostname = "app.terraform.io"
#     organization = "homelab-azure"
#     workspace = {
#       name = "academic-demo-azure-rg"
#     }
#   }
# }


terraform {
  cloud {
    organization = "homelab-azure"

    workspaces {
      name = "academic-demo-azure-rg"
    }

  }
}
