variable "api_token" { type = string }
variable "server_id" { type = number }
variable "name" { type = string }
variable "restricted" {
  default = false
  type    = bool
}
variable "position" {
  default = 0
  type    = number
}
variable "permissions" {
  type = map
}
variable "roles" {
  type = map
}