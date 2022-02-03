data "discord_member" "member" {
  server_id     = var.server_id
  username      = var.username
  discriminator = var.discriminator
  user_id       = var.user_id
}

resource "discord_member_roles" "member_role" {
  user_id    = data.discord_member.member.id
  server_id  = var.server_id
  depends_on = [data.discord_member.member]
  for_each   = var.roles
  role {
    role_id  = each.key
    has_role = each.value
  }
}