resource "mysql_user" "ghituale" {
  user               = "ghituale"
  host               = "%.mde.utc"
}

resource "mysql_grant" "ghituale" {
  user = mysql_user.ghituale
  database   = "ALL"
  privileges = ["ALL"]
}
