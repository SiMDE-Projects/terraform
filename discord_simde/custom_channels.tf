### Github notifications
resource discord_text_channel notifications {
  name      = "github-notifications"
  server_id = discord_server.server.id
  category  = module.general.category.id
  position  = 2
  sync_perms_with_category = false
}