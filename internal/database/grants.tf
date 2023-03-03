resource "mysql_grant" "database_grant" {
  user       = mysql_user.user.user
  host       = mysql_user.user.host
  database   = mysql_database.database.name
  privileges = ["SELECT", "UPDATE", "INSERT", "DELETE", "CREATE", "DROP", "ALTER", "INDEX"]
}
