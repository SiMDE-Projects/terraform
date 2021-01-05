terraform {
  required_providers {
    github = {
      source  = "hashicorp/github"
      version = "4.1.0"
    }
  }
}

provider github {
  token        = var.token
  organization = var.organization
}

provider github {
  alias        = "old"
  token        = var.token
  organization = "simde-utc"
}
