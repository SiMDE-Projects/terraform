module "discord_simde" {
  source    = "./discord_simde/"
  api_token = var.discord_token
}

module "github" {
  source           = "./github/"
  token            = var.github_token
  organization     = var.github_organization
  old_organization = var.github_old_organization
}
