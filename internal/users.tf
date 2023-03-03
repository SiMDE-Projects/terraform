resource "mysql_user" "ghituale" {
  user               = "ghituale"
  host               = "%.mde.utc"
}

resource "mysql_grant" "ghituale" {
  user = mysql_user.ghituale.user
  database   = "*.*"
  privileges = ["SELECT", "UPDATE", "INSERT", "DELETE", "SHOW VIEW", "CREATE", "DROP", "ALTER", "INDEX", "CREATE VIEW"]
}
