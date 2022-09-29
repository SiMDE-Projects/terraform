terraform {
  required_version = ">= 1.1.0"
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.0.1"
    }
  }
  cloud {
    organization = "SiMDE-Projects"
    workspaces {
      name = "SiMDE_Terraform"
    }
  }
}
