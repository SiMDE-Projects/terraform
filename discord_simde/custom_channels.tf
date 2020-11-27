### Github notifications
resource discord_text_channel notifications {
  name                     = "github-notifications"
  server_id                = discord_server.server.id
  category                 = module.general.category.id
  position                 = 2
  sync_perms_with_category = false
}

### Games
resource discord_text_channel games {
  name                     = "clashofcode-and-cie"
  server_id                = discord_server.server.id
  category                 = module.general.category.id
  position                 = 3
  sync_perms_with_category = true
}