module cesar_richard {
  source        = "./member"
  api_token     = var.api_token
  server_id     = discord_server.server.id
  username      = "licorne"
  discriminator = 2476
  roles = {
    (discord_role.admin.id)  = true
    (discord_role.payutc.id) = true
    (discord_role.member.id) = false
  }
}

module noe_amiot {
  source        = "./member"
  api_token     = var.api_token
  server_id     = discord_server.server.id
  username      = "Noé | Noé"
  discriminator = 7299
  roles = {
    (discord_role.admin.id)  = true
    (discord_role.payutc.id) = true
  }
}

module victor_ronfaut {
  source        = "./member"
  api_token     = var.api_token
  server_id     = discord_server.server.id
  username      = "Cathaïste"
  discriminator = 4099
  roles = {
    (discord_role.admin.id)  = true
    (discord_role.payutc.id) = true
  }
}

module maxime_vaillant {
  source        = "./member"
  api_token     = var.api_token
  server_id     = discord_server.server.id
  username      = "Maxime"
  discriminator = 6059
  roles = {
    (discord_role.member.id) = true
  }
}

module antoine_cet {
  source        = "./member"
  api_token     = var.api_token
  server_id     = discord_server.server.id
  username      = "kinshasa"
  discriminator = 6035
  roles = {
    (discord_role.member.id) = true
  }
}


module anton42 {
  source        = "./member"
  api_token     = var.api_token
  server_id     = discord_server.server.id
  username      = "anton42"
  discriminator = 2714
  roles = {
    (discord_role.member.id) = true
  }
}

module BWRCat {
  source        = "./member"
  api_token     = var.api_token
  server_id     = discord_server.server.id
  username      = "BWRCat"
  discriminator = 1078
  roles = {
    (discord_role.member.id) = true
  }
}

module remy_huet {
  source        = "./member"
  api_token     = var.api_token
  server_id     = discord_server.server.id
  username      = "RémyH"
  discriminator = "0657"
  roles = {
    (discord_role.member.id) = true
    (discord_role.treso.id)  = true
  }
}

module matthieu_decaux {
  source        = "./member"
  api_token     = var.api_token
  server_id     = discord_server.server.id
  username      = "Matthieu"
  discriminator = 3565
  roles = {
    (discord_role.member.id) = true
    (discord_role.treso.id)  = true
  }
}
