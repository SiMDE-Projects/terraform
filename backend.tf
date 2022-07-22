terraform {
#  backend "s3" {
#    region  = "eu-west-3"
#    bucket  = "terraform-remote-state-crichard"
#    key     = "simde-project.tfstate"
#    encrypt = true
#  }
}

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
