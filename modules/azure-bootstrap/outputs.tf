output "github_repo_url" {
  value = github_repository.repo.html_url
}

output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "service_principal_app_id" {
  value = azuread_application.app.application_id
}

output "service_principal_secret" {
  value     = azuread_application_password.sp_password.value
  sensitive = true
}

output "storage_account_name" {
  value = azurerm_storage_account.sa.name
}
