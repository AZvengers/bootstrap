# GitHub Repository

resource "github_repository" "repo" {
  name        = var.github_repo_name
  description = "Terraform managed repository"
  visibility  = var.github_repo_visibility
  auto_init   = true
}


# Azure Resource Group

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}


# Azure Service Principal

resource "azuread_application" "app" {
  display_name = var.service_principal_name
}

resource "azuread_service_principal" "sp" {
  application_id = azuread_application.app.application_id
}

resource "azuread_application_password" "sp_password" {
  application_object_id = azuread_application.app.object_id
}


# Azure Storage Account

resource "azurerm_storage_account" "sa" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  allow_blob_public_access = false
}
