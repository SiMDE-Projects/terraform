variable "mysql_host" {
  type = string
}
variable "mysql_user" {
  type = string
}
variable "mysql_password" {
  type      = string
  sensitive = true
}
