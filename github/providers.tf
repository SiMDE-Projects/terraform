variable "organization" {
  type    = string
  default = "SiMDE-Projects"
}
variable "github_token" {}

provider "github" {
  token        = var.github_token
  organization = var.organization
}