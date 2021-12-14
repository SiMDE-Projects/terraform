output "invite" {
  value = {
    general         = discord_invite.general.id
    public-entraide = discord_invite.public-entraide
  }
  depends_on = [
    discord_invite.general,
    discord_invite.public-entraide
  ]
}