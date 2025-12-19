terraform {
  required_version = ">= 1.4.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }

    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.0"
    }

    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

# Providers

provider "azurerm" {
  features {}
}

provider "azuread" {}

provider "github" {
  token = var.github_token
  owner = var.github_owner
}