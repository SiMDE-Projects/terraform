resource discord_category_channel category {
  name      = var.name
  server_id = var.server_id
  position  = var.position
}

resource discord_channel_permission admin {
  count        = var.restricted ? 1 : 0
  channel_id   = discord_category_channel.category.id
  type         = "role"
  overwrite_id = var.roles.admin.id
  allow        = var.permissions.admin.allow_bits
  deny         = var.permissions.admin.deny_bits
}

resource discord_channel_permission member {
  count        = var.restricted ? 0 : 1
  channel_id   = discord_category_channel.category.id
  type         = "role"
  overwrite_id = var.roles.everyone.id
  allow        = var.permissions.member.allow_bits
  deny         = var.permissions.member.deny_bits
}

resource discord_channel_permission member_denied {
  count        = var.restricted ? 1 : 0
  channel_id   = discord_category_channel.category.id
  type         = "role"
  overwrite_id = var.roles.member.id
  #allow        = var.permissions.deny.allow_bits
  deny = var.permissions.deny.deny_bits
}

resource discord_text_channel text {
  name      = var.name
  server_id = var.server_id
  category  = discord_category_channel.category.id
  position  = 0
}

resource discord_voice_channel voice {
  name      = var.name
  server_id = var.server_id
  category  = discord_category_channel.category.id
  position  = discord_text_channel.text.position + 1
}