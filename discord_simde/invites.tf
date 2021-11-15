resource "discord_invite" "general" {
  channel_id = module.general.text_channel_id
  max_age    = 0
}


resource "discord_invite" "public-entraide" {
  channel_id = module.public-entraide.text_channel_id
  max_age    = 0
}
