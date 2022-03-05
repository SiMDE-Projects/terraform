resource "mysql_database" "database" {
  name = var.database == "" ? var.username : var.database
}
