data "discord_local_image" "logo" {
  file = "./logo.png"
}

resource "discord_server" "server" {
  name                    = "SiMDE - Service Informatique de la Maison des Étudiants"
  region                  = "europe"
  icon_data_uri           = data.discord_local_image.logo.data_uri
  verification_level      = 1
  system_channel_id       = "760900081036689410"
  explicit_content_filter = 2
}