output "invite" {
  value      = {
    general         = discord_invite.general.id
    public-entraide = discord_invite.public-entraide.id
  }
  depends_on = [
    discord_invite.general,
    discord_invite.public-entraide
  ]
}