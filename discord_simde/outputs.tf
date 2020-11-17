output "invite" {
  value = {
    general = discord_invite.general.id,
    treso   = discord_invite.treso.id
  }
  depends_on = [
    discord_invite.general,
    discord_invite.treso
  ]
}