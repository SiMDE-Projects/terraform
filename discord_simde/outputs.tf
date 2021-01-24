output "invite" {
  value = {
    general = discord_invite.general.id
  }
  depends_on = [
    discord_invite.general
  ]
}