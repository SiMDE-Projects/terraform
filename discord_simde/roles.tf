locals {
  roles = {
    admin    = discord_role.admin
    member   = discord_role.member
    treso    = discord_role.treso
    payutc   = discord_role.payutc
    integ    = discord_role.integ
    jeffrey  = discord_role.jeffrey
    woolly   = discord_role.woolly
    bde      = discord_role.bde
    respinfo = discord_role.respinfo
    everyone = discord_role_everyone.everyone
  }
}

data discord_color admin {
  hex = "#872205"
}

data discord_color treso {
  hex = "#E0E000"
}

data discord_color payutc {
  hex = "#E0E000"
}

data discord_color integ {
  hex = "#E0E000"
}

data discord_color jeffrey {
  hex = "#E0E000"
}

data discord_color woolly {
  hex = "#E0E000"
}

data discord_color bde {
  hex = "#E0E000"
}

data discord_color member {
  hex = "#4287f5"
}

data discord_color respinfo {
  hex = "#4287f5"
}

resource discord_role admin {
  server_id   = discord_server.server.id
  name        = "Saint administrateur"
  permissions = data.discord_permission.admin.allow_bits
  position    = discord_role.zapier.position + 1
  color       = data.discord_color.admin.dec
}

resource discord_role zapier {
  server_id   = discord_server.server.id
  name        = "Zapier"
  permissions = data.discord_permission.bot.allow_bits
  position    = discord_role.payutc.position + 1
}

resource discord_role payutc {
  server_id   = discord_server.server.id
  name        = "Tim Pay'UTC"
  position    = discord_role.treso.position + 1
  permissions = data.discord_permission.member.allow_bits
  color       = data.discord_color.payutc.dec
  mentionable = true
}

resource discord_role treso {
  server_id   = discord_server.server.id
  name        = "Projet Flairsou"
  position    = discord_role.integ.position + 1
  permissions = data.discord_permission.member.allow_bits
  color       = data.discord_color.treso.dec
  mentionable = true
}

resource discord_role jeffrey {
  server_id   = discord_server.server.id
  name        = "Projet Jeffrey"
  position    = discord_role.woolly.position + 1
  permissions = data.discord_permission.member.allow_bits
  color       = data.discord_color.jeffrey.dec
  mentionable = true
}

resource discord_role integ {
  server_id   = discord_server.server.id
  name        = "Integ"
  position    = discord_role.jeffrey.position + 1
  permissions = data.discord_permission.member.allow_bits
  color       = data.discord_color.integ.dec
  mentionable = true
}

resource discord_role woolly {
  server_id   = discord_server.server.id
  name        = "Woolly"
  position    = discord_role.bde.position + 1
  permissions = data.discord_permission.member.allow_bits
  color       = data.discord_color.woolly.dec
  mentionable = true
}

resource discord_role bde {
  server_id   = discord_server.server.id
  name        = "BDE"
  position    = discord_role.member.position + 1
  permissions = data.discord_permission.member.allow_bits
  color       = data.discord_color.bde.dec
  mentionable = true
}

resource discord_role member {
  server_id   = discord_server.server.id
  name        = "Vénéré membre"
  position    = discord_role.respinfo.position + 1
  permissions = data.discord_permission.member.allow_bits
  color       = data.discord_color.member.dec
}

resource discord_role respinfo {
  server_id   = discord_server.server.id
  name        = "Elegant Resp Info"
  position    = 1
  permissions = data.discord_permission.member.allow_bits
  color       = data.discord_color.respinfo.dec
}

resource discord_role_everyone everyone {
  server_id   = discord_server.server.id
  permissions = data.discord_permission.base_permissions.allow_bits
}
