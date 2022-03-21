resource "random_password" "password" {
  length           = 32
  special          = false
  override_special = "_%@"
}

resource "mysql_user" "user" {
  user               = var.username
  host               = var.host
  plaintext_password = random_password.password.result
}
