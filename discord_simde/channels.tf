module "general" {
  source      = "./channels"
  name        = "général"
  api_token   = var.api_token
  server_id   = discord_server.server.id
  permissions = local.permissions
  roles       = local.roles
}

module "private-treso" {
  source      = "./channels"
  name        = "private-flairsou"
  api_token   = var.api_token
  server_id   = discord_server.server.id
  position    = module.general.position + 1
  restricted  = true
  permissions = local.permissions
  roles       = local.roles
}

module "private-comet" {
  source      = "./channels"
  name        = "private-comet"
  api_token   = var.api_token
  server_id   = discord_server.server.id
  position    = module.private-treso.position + 1
  restricted  = true
  permissions = local.permissions
  roles       = local.roles
}

module "private-payutc" {
  source      = "./channels"
  name        = "private-payutc"
  api_token   = var.api_token
  server_id   = discord_server.server.id
  position    = module.private-comet.position + 1
  restricted  = true
  permissions = local.permissions
  roles       = local.roles
}

module "private-integ" {
  source      = "./channels"
  name        = "private-integ"
  api_token   = var.api_token
  server_id   = discord_server.server.id
  position    = module.private-payutc.position + 1
  restricted  = true
  permissions = local.permissions
  roles       = local.roles
}

module "private-jeffrey" {
  source      = "./channels"
  name        = "private-jeffrey"
  api_token   = var.api_token
  server_id   = discord_server.server.id
  position    = module.private-integ.position + 1
  restricted  = true
  permissions = local.permissions
  roles       = local.roles
}

module "private-woolly" {
  source      = "./channels"
  name        = "private-woolly"
  api_token   = var.api_token
  server_id   = discord_server.server.id
  position    = module.private-jeffrey.position + 1
  restricted  = true
  permissions = local.permissions
  roles       = local.roles
}

module "private-gesasso" {
  source      = "./channels"
  name        = "private-gesasso"
  topic       = "Projet de plateforme de traitement automatisé des requetes de support SiMDE"
  api_token   = var.api_token
  server_id   = discord_server.server.id
  position    = module.private-woolly.position + 1
  restricted  = true
  permissions = local.permissions
  roles       = local.roles
}

module "private-bde" {
  source      = "./channels"
  name        = "private-bde"
  api_token   = var.api_token
  server_id   = discord_server.server.id
  position    = module.private-gesasso.position + 1
  restricted  = true
  permissions = local.permissions
  roles       = local.roles
}

module "private-emploidut" {
  source      = "./channels"
  name        = "private-emploidut"
  api_token   = var.api_token
  server_id   = discord_server.server.id
  position    = module.private-bde.position + 1
  restricted  = true
  permissions = local.permissions
  roles       = local.roles
}

module "private-integfev" {
  source      = "./channels"
  name        = "private-integfev"
  api_token   = var.api_token
  server_id   = discord_server.server.id
  position    = module.private-emploidut.position + 1
  restricted  = true
  permissions = local.permissions
  roles       = local.roles
}

module "private-admin" {
  source      = "./channels"
  name        = "private-admin"
  api_token   = var.api_token
  server_id   = discord_server.server.id
  position    = module.private-integfev.position + 1
  restricted  = true
  permissions = local.permissions
  roles       = local.roles
}
