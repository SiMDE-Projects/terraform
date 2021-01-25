variable "api_token" { type = string }
variable "server_id" { type = number }
variable "username" { type = string }
variable "discriminator" { type = string }
variable "roles" {
  type    = map(bool)
  default = {}
}