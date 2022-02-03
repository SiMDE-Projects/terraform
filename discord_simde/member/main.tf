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

  dynamic "role" {
    for_each   = var.roles
    content {
        role_id  = role.key
        has_role = role.value
    }
  }
}