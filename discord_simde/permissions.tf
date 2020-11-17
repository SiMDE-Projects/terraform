locals {
  permissions = {
    admin            = data.discord_permission.admin
    member           = data.discord_permission.member
    deny             = data.discord_permission.deny
    allow            = data.discord_permission.allow
    base_permissions = data.discord_permission.base_permissions
  }
}

data discord_permission admin {
  allow_extends = data.discord_permission.base_permissions.allow_bits
  deny_extends  = data.discord_permission.base_permissions.deny_bits
  administrator = "allow"
}

data discord_permission member {
  allow_extends         = data.discord_permission.base_permissions.allow_bits
  deny_extends          = data.discord_permission.base_permissions.deny_bits
  priority_speaker      = "deny"
  read_message_history  = "allow"
  mention_everyone      = "deny"
  create_instant_invite = "deny"
  embed_links           = "allow"
  connect               = "allow"
  stream                = "allow"
  speak                 = "allow"
}

data discord_permission deny {
  allow_extends = data.discord_permission.base_permissions.allow_bits
  deny_extends  = data.discord_permission.base_permissions.deny_bits
  view_channel  = "deny"
}

data discord_permission allow {
  allow_extends        = data.discord_permission.base_permissions.allow_bits
  deny_extends         = data.discord_permission.base_permissions.deny_bits
  view_channel         = "allow"
  send_messages        = "allow"
  read_message_history = "allow"
}

data discord_permission base_permissions {
  view_channel          = "deny"
  send_messages         = "unset"
  use_vad               = "allow"
  priority_speaker      = "deny"
  read_message_history  = "deny"
  view_guild_insights   = "unset"
  manage_emojis         = "unset"
  manage_webhooks       = "unset"
  mention_everyone      = "deny"
  kick_members          = "unset"
  view_audit_log        = "unset"
  administrator         = "unset"
  ban_members           = "unset"
  create_instant_invite = "deny"
  embed_links           = "unset"
  mute_members          = "unset"
  manage_nicknames      = "unset"
  manage_roles          = "unset"
  move_members          = "unset"
  change_nickname       = "allow"
  send_tts_messages     = "unset"
  use_external_emojis   = "unset"
  add_reactions         = "allow"
  attach_files          = "allow"
  deafen_members        = "unset"
  manage_messages       = "unset"
  manage_guild          = "unset"
  connect               = "unset"
  stream                = "unset"
  manage_channels       = "unset"
  speak                 = "unset"
}