## Ghituale
resource "mysql_user" "ghituale" {
  user = "ghituale"
  host = "%.mde.utc"
}

resource "mysql_grant" "ghituale" {
  user       = mysql_user.ghituale.user
  host       = mysql_user.ghituale.host
  database   = "*"
  privileges = ["SELECT", "UPDATE", "INSERT", "DELETE", "CREATE", "DROP", "INDEX", "ALTER", "CREATE VIEW", "SHOW VIEW"]
}

## Cerichar

resource "mysql_user" "cerichar" {
  user = "cerichar"
  host = "%.mde.utc"
}

resource "mysql_grant" "cerichar" {
  user       = mysql_user.cerichar.user
  host       = mysql_user.cerichar.host
  database   = "*"
  privileges = ["SELECT", "UPDATE", "INSERT", "DELETE", "CREATE", "DROP", "INDEX", "ALTER", "CREATE VIEW", "SHOW VIEW"]
}
