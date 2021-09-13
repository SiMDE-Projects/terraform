terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = ">= 4.14.0"
    }
  }
}

provider "github" {
  token = var.token
  owner = var.organization
}

provider "github" {
  alias = "old"
  token = var.token
  owner = var.old_organization
}
