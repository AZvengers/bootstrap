terraform {
  required_version = ">= 1.4.0"
}

provider "azurerm" {
  features {}
}

provider "azuread" {}

provider "github" {
  token = var.github_token
  owner = var.github_owner
}

module "bootstrap" {
  source = "./modules/azure-bootstrap"

  resource_group_name = "rg-terraform-bootstrap"
  location            = "East US"

  storage_account_name   = "tfbootstrap12345"
  service_principal_name = "terraform-bootstrap-sp"

  github_owner           = var.github_owner
  github_repo_name       = "terraform-bootstrap"
  github_repo_visibility = "private"
  github_token           = var.github_token
}
