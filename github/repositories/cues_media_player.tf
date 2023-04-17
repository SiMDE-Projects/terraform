### Cues Media Player

resource "github_repository" "cues_media_player" {
  allow_merge_commit     = true
  allow_rebase_merge     = true
  allow_squash_merge     = true
  archived               = false
  auto_init              = true
  delete_branch_on_merge = true
  description            = "Développer un CMP pour les vidéos de Cues. Team Discussions: SiMDE-Projects/terraform"
  has_downloads          = false
  has_issues             = true
  has_projects           = true
  has_wiki               = false
  name                   = "cues_media_player"
  topics                 = []
  visibility             = "private"
  vulnerability_alerts   = true
}

resource "github_team_repository" "cues_media_player_cues_media_player" {
  team_id    = var.teams.cues_media_player.id
  repository = github_repository.cues_media_player.name
  permission = "maintain"
}
