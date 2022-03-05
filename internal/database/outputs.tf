output "password" {
  value     = random_password.password.result
  sensitive = true
}

output "database_name" {
  value = mysql_database.database.name
}

output "username" {
  value = mysql_user.user.user
}
