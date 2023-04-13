### Cues Media Player

resource "github_repository" "cues_media_player" {
  allow_merge_commit     = true
  allow_rebase_merge     = true
  allow_squash_merge     = true
  archived               = false
  auto_init              = true
  delete_branch_on_merge = true
  description            = "Pour les vidéos de Cues"
  has_downloads          = false
  has_issues             = true
  has_projects           = true
  has_wiki               = true
  name                   = "cues_media_player"
  topics                 = []
  visibility             = "private"
  vulnerability_alerts   = true
}

resource "github_branch_protection" "cues_media_player_master" {
  repository_id     = github_repository.cues_media_player.name
  pattern           = "master"
  push_restrictions = [var.teams.cues_media_player.node_id]
  required_pull_request_reviews {
    restrict_dismissals             = true
    dismiss_stale_reviews           = true
    dismissal_restrictions          = [var.teams.simde.node_id]
    require_code_owner_reviews      = true
    required_approving_review_count = 1
  }
}

resource "github_team_repository" "simde_cues_media_player" {
  team_id    = var.teams.simde.id
  repository = github_repository.sparkle.name
  permission = "maintain"
}

resource "github_team_repository" "cues_media_player_cues_media_player" {
  team_id    = var.teams.cues_media_player.id
  repository = github_repository.cues_media_player.name
  permission = "maintain"
}
