output "discord" {
  value = module.discord_simde
}

output "github" {
  value     = module.github
  sensitive = true
}
