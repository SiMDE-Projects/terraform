### Gesasso Mk Ultra

resource "github_repository" "gesasso_mkultra" {
  allow_merge_commit     = true
  allow_rebase_merge     = true
  allow_squash_merge     = true
  archived               = false
  auto_init              = false
  delete_branch_on_merge = true
  description            = "Portail de collecte des demandes des asso pour Gesasso"
  has_downloads          = false
  has_issues             = true
  has_projects           = true
  has_wiki               = false
  name                   = "gesasso_mkultra"
  topics = [
    "gesasso"
  ]
  visibility           = "public"
  vulnerability_alerts = true
}

resource "github_branch_protection" "gesasso_mkultra_master" {
  repository_id     = github_repository.gesasso_mkultra.name
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

resource "github_team_repository" "simde_gesasso_mkultra" {
  team_id    = var.teams.simde.id
  repository = github_repository.gesasso_mkultra.name
  permission = "maintain"
}

resource "github_team_repository" "gesasso_gesasso_mkultra" {
  team_id    = var.teams.gesasso.id
  repository = github_repository.gesasso_mkultra.name
  permission = "maintain"
}