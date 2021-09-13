variable "username" {
  type = string
}

variable "role" {
  type    = string
  default = "member"
}

variable "teams" {
  default = {}
  type    = map(any)
}
