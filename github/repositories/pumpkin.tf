### Sparkle

resource "github_repository" "pumpkin" {
  allow_merge_commit     = true
  allow_rebase_merge     = true
  allow_squash_merge     = true
  archived               = false
  auto_init              = true
  delete_branch_on_merge = true
  description            = "(demandez à Léopold C.)"
  has_downloads          = false
  has_issues             = true
  has_projects           = true
  has_wiki               = true
  name                   = "pumpkin"
  topics                 = []
  visibility             = "public"
  vulnerability_alerts   = true
}

resource "github_branch_protection" "pumpkin_master" {
  repository_id     = github_repository.pumpkin.name
  pattern           = "master"
  push_restrictions = [var.teams.simde.node_id]
  required_pull_request_reviews {
    restrict_dismissals             = true
    dismiss_stale_reviews           = true
    dismissal_restrictions          = [var.teams.simde.node_id]
    require_code_owner_reviews      = true
    required_approving_review_count = 1
  }
}

resource "github_team_repository" "simde_pumpkin" {
  team_id    = var.teams.simde.id
  repository = github_repository.pumpkin.name
  permission = "maintain"
}

resource "github_team_repository" "pumpkin_pumpkin" {
  team_id    = var.teams.pumpkin.id
  repository = github_repository.pumpkin.name
  permission = "maintain"
}
