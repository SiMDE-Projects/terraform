## Ghituale
resource "mysql_user" "ghituale" {
  user = "ghituale"
  host = "%.mde.utc"
}

resource "mysql_grant" "ghituale" {
  user       = mysql_user.ghituale.user
  host       = mysql_user.ghituale.host
  database   = "*"
  privileges = ["SELECT", "UPDATE", "INSERT", "DELETE", "CREATE", "DROP", "INDEX", "ALTER", "CREATE VIEW", "SHOW VIEW", "DELETE HISTORY"]
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
  privileges = ["SELECT", "UPDATE", "INSERT", "DELETE", "CREATE", "DROP", "INDEX", "ALTER", "CREATE VIEW", "SHOW VIEW", "DELETE HISTORY"]
}

## lchappuis

resource "mysql_user" "lchappui" {
  user = "lchappui"
  host = "%.mde.utc"
}

resource "mysql_grant" "lchappui" {
  user       = mysql_user.lchappui.user
  host       = mysql_user.lchappui.host
  database   = "*"
  privileges = ["GRANT","SELECT", "UPDATE", "INSERT", "DELETE", "CREATE", "DROP", "INDEX", "ALTER", "CREATE VIEW", "SHOW VIEW", "DELETE HISTORY"]
}




## BOT pr clean les billets générés en trop par woolly

resource "mysql_user" "woolly" {
  user = "woollycacacleaner"
  host = "%.mde.utc"
}

resource "mysql_grant" "woolly" {
  user       = mysql_user.woolly.user
  host       = mysql_user.woolly.host
  database   = "woolly"
  privileges = ["SELECT","DELETE"]
}