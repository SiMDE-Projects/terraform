variable "api_token" { type = string }
variable "server_id" { type = number }
variable "username" {
  type    = string
  default = null
}
variable "discriminator" {
  type    = string
  default = null
}
variable "user_id" {
  type    = string
  default = null
}
variable "roles" {
  type    = map(bool)
  default = {}
}