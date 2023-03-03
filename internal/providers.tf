terraform {
  required_providers {
    mysql = {
      source  = "petoju/mysql"
      version = "3.0.30"
    }
  }
}

provider "mysql" {
  endpoint = var.mysql_host
  username = var.mysql_user
  password = var.mysql_password
}
