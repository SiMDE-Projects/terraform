locals {
  roles = {
    admin     = discord_role.admin
    pacha_com = discord_role.pacha_com
    member    = discord_role.member
    treso     = discord_role.treso
    rhizome   = discord_role.rhizome
    payutc    = discord_role.payutc
    woolly    = discord_role.woolly
    integ     = discord_role.integ
    etuville  = discord_role.etuville
    comet     = discord_role.comet
    sparkle   = discord_role.sparkle
    uvweb     = discord_role.uvweb
    bde       = discord_role.bde
    gesasso   = discord_role.gesasso
    emploidut = discord_role.emploidut
    pumpkin    = discord_role.pumpkin
    integfev  = discord_role.integfev
    respinfo  = discord_role.respinfo
    portail   = discord_role.portail
    curieux   = discord_role.curieux
    polar   = discord_role.polar
    everyone  = discord_role_everyone.everyone
  }
}

data "discord_color" "admin" {
  hex = "#872205"
}

data "discord_color" "pacha_com" {
  hex = "#852003"
}

data "discord_color" "treso" {
  hex = "#E0E000"
}

data "discord_color" "rhizome" {
  hex = "#8ec449"
}

data "discord_color" "payutc" {
  hex = "#E0E000"
}

data "discord_color" "woolly" {
  hex = "#77b5fe"
}

data "discord_color" "pumpkin" {
  hex = "#E0E000"
}

data "discord_color" "integ" {
  hex = "#E0A000"
}

data "discord_color" "etuville" {
  hex = "#E0A000"
}

data "discord_color" "bde" {
  hex = "#E0A000"
}

data "discord_color" "gesasso" {
  hex = "#E0E000"
}

data "discord_color" "sparkle" {
  hex = "#E0E000"
}

data "discord_color" "uvweb" {
  hex = "#E0E000"
}

data "discord_color" "emploidut" {
  hex = "#E0E000"
}

data "discord_color" "comet" {
  hex = "#E0A000"
}

data "discord_color" "integfev" {
  hex = "#E0A000"
}

data "discord_color" "member" {
  hex = "#4070F0"
}

data "discord_color" "respinfo" {
  hex = "#4070F0"
}

data "discord_color" "curieux" {
  hex = "#79ACFF"
}
data "discord_color" "polar" {
  hex = "#33cc33"
}

resource "discord_role" "admin" {
  server_id   = discord_server.server.id
  name        = "Saint administrateur"
  permissions = data.discord_permission.admin.allow_bits
  position    = discord_role.pacha_com.position + 1
  color       = data.discord_color.admin.dec
}

resource "discord_role" "pacha_com" {
  server_id   = discord_server.server.id
  name        = "Pacha de la Com"
  permissions = data.discord_permission.member.allow_bits
  position    = discord_role.zapier.position + 1
  color       = data.discord_color.pacha_com.dec
}

resource "discord_role" "zapier" {
  server_id   = discord_server.server.id
  name        = "Zapier"
  permissions = data.discord_permission.bot.allow_bits
  position    = discord_role.rhizome.position + 1
}

resource "discord_role" "rhizome" {
  server_id   = discord_server.server.id
  name        = "Rhizome"
  position    = discord_role.payutc.position + 1
  permissions = data.discord_permission.member.allow_bits
  color       = data.discord_color.payutc.dec
  mentionable = true
}

resource "discord_role" "payutc" {
  server_id   = discord_server.server.id
  name        = "Tim Pay'UTC"
  position    = discord_role.woolly.position + 1
  permissions = data.discord_permission.member.allow_bits
  color       = data.discord_color.payutc.dec
  mentionable = true
}

resource "discord_role" "woolly" {
  server_id   = discord_server.server.id
  name        = "Tim Woolly"
  position    = discord_role.treso.position + 1
  permissions = data.discord_permission.member.allow_bits
  color       = data.discord_color.woolly.dec
  mentionable = true
}

resource "discord_role" "treso" {
  server_id   = discord_server.server.id
  name        = "Projet Flairsou"
  position    = discord_role.integ.position + 1
  permissions = data.discord_permission.member.allow_bits
  color       = data.discord_color.treso.dec
  mentionable = true
}

resource "discord_role" "integ" {
  server_id   = discord_server.server.id
  name        = "Integ"
  position    = discord_role.etuville.position + 1
  permissions = data.discord_permission.member.allow_bits
  color       = data.discord_color.integ.dec
  mentionable = true
}

resource "discord_role" "etuville" {
  server_id   = discord_server.server.id
  name        = "Etuville"
  position    = discord_role.gesasso.position + 1
  permissions = data.discord_permission.member.allow_bits
  color       = data.discord_color.etuville.dec
  mentionable = true
}

resource "discord_role" "gesasso" {
  server_id   = discord_server.server.id
  name        = "Projet Gesasso"
  position    = discord_role.bde.position + 1
  permissions = data.discord_permission.member.allow_bits
  color       = data.discord_color.gesasso.dec
  mentionable = true
}

resource "discord_role" "bde" {
  server_id   = discord_server.server.id
  name        = "BDE"
  position    = discord_role.emploidut.position + 1
  permissions = data.discord_permission.member.allow_bits
  color       = data.discord_color.bde.dec
  mentionable = true
}

resource "discord_role" "emploidut" {
  server_id   = discord_server.server.id
  name        = "Emploi du temps"
  position    = discord_role.comet.position + 1
  permissions = data.discord_permission.member.allow_bits
  color       = data.discord_color.emploidut.dec
  mentionable = true
}

resource "discord_role" "polar" {
  server_id   = discord_server.server.id
  name        = "Polar"
  position    = discord_role.sparkle.position + 1
  permissions = data.discord_permission.member.allow_bits
  color       = data.discord_color.polar.dec
  mentionable = true
}

resource "discord_role" "pumpkin" {
  server_id   = discord_server.server.id
  name        = "Pumpkin"
  position    = discord_role.polar.position + 1
  permissions = data.discord_permission.member.allow_bits
  color       = data.discord_color.pumpkin.dec
  mentionable = true
}

resource "discord_role" "comet" {
  server_id   = discord_server.server.id
  name        = "COMET"
  position    = discord_role.integfev.position + 1
  permissions = data.discord_permission.member.allow_bits
  color       = data.discord_color.comet.dec
  mentionable = true
}

resource "discord_role" "integfev" {
  server_id   = discord_server.server.id
  name        = "Integ Fev"
  position    = discord_role.sparkle.position + 1
  permissions = data.discord_permission.member.allow_bits
  color       = data.discord_color.integfev.dec
  mentionable = true
}

resource "discord_role" "sparkle" {
  server_id   = discord_server.server.id
  name        = "Projet Sparkle"
  position    = discord_role.uvweb.position + 1
  permissions = data.discord_permission.member.allow_bits
  color       = data.discord_color.sparkle.dec
  mentionable = true
}

resource "discord_role" "uvweb" {
  server_id   = discord_server.server.id
  name        = "Projet UVWeb"
  position    = discord_role.portail.position + 1
  permissions = data.discord_permission.member.allow_bits
  color       = data.discord_color.uvweb.dec
  mentionable = true
}

resource "discord_role" "portail" {
  server_id   = discord_server.server.id
  name        = "Projet Portail des assos"
  position    = discord_role.member.position + 1
  permissions = data.discord_permission.member.allow_bits
  color       = data.discord_color.uvweb.dec
  mentionable = true
}

resource "discord_role" "member" {
  server_id   = discord_server.server.id
  name        = "Vénéré membre"
  position    = discord_role.respinfo.position + 1
  permissions = data.discord_permission.member.allow_bits
  color       = data.discord_color.member.dec
}

resource "discord_role" "respinfo" {
  server_id   = discord_server.server.id
  name        = "Elegant Resp Info"
  position    = discord_role.curieux.position + 1
  permissions = data.discord_permission.member.allow_bits
  color       = data.discord_color.respinfo.dec
}

resource "discord_role" "curieux" {
  server_id   = discord_server.server.id
  name        = "Honorable curieux"
  position    = 1
  permissions = data.discord_permission.member.allow_bits
  color       = data.discord_color.curieux.dec
}


resource "discord_role_everyone" "everyone" {
  server_id   = discord_server.server.id
  permissions = data.discord_permission.base_permissions.allow_bits
}
