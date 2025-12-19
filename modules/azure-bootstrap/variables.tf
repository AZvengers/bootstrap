variable "location" {
  description = "Azure region"
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "Azure Resource Group name"
  type        = string
}

variable "storage_account_name" {
  description = "Globally unique, lowercase"
  type        = string
}

variable "service_principal_name" {
  description = "Azure AD application / SP name"
  type        = string
}

variable "github_owner" {
  description = "GitHub org or username"
  type        = string
}

variable "github_repo_name" {
  description = "GitHub repository name"
  type        = string
}

variable "github_repo_visibility" {
  description = "public or private"
  type        = string
  default     = "private"
}

variable "github_token" {
  description = "GitHub PAT"
  type        = string
  sensitive   = true
}
