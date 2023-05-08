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
  privileges = ["SELECT", "UPDATE", "INSERT", "DELETE", "CREATE", "DROP", "INDEX", "ALTER", "CREATE VIEW", "SHOW VIEW", "DELETE HISTORY"]
}

## aeberhar

resource "mysql_user" "aeberhar" {
  user = "aeberhar"
  host = "%.mde.utc"
}

resource "mysql_grant" "aeberhar" {
  user       = mysql_user.aeberhar.user
  host       = mysql_user.aeberhar.host
  database   = "*"
  privileges = ["SELECT", "UPDATE", "INSERT", "DELETE", "CREATE", "DROP", "INDEX", "ALTER", "CREATE VIEW", "SHOW VIEW", "DELETE HISTORY"]
}

#jumeltom
resource "mysql_user" "jumeltom" {
  user = "jumeltom"
  host = "%.mde.utc"
}

resource "mysql_grant" "jumeltom" {
  user       = mysql_user.jumeltom.user
  host       = mysql_user.jumeltom.host
  database   = "*"
  privileges = ["SELECT", "UPDATE", "INSERT", "DELETE", "CREATE", "DROP", "INDEX", "ALTER", "CREATE VIEW", "SHOW VIEW", "DELETE HISTORY"]
}

