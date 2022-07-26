terraform {
  required_version = ">= 1.1.0"
  cloud {
    organization = "SiMDE-Projects"
    workspaces {
      name = "Databases"
    }
  }
}
