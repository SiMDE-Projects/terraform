### OAuth PDA UTC

resource "github_repository" "oauth_pda_utc" {
  allow_merge_commit     = true
  allow_rebase_merge     = true
  allow_squash_merge     = true
  archived               = false
  auto_init              = true
  delete_branch_on_merge = true
  description            = "Bibliotheque d'authentification Django via le Portail des Associations UTC"
  has_downloads          = true
  has_issues             = true
  has_projects           = false
  has_wiki               = false
  name                   = "oauth_pda_utc"
  topics                 = [
    "portail",
    "oauth2",
    "library"
  ]
  visibility             = "public"
  vulnerability_alerts   = true
}

resource "github_branch_protection" "oauth_pda_utc_master" {
  repository_id     = github_repository.oauth_pda_utc.name
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

resource "github_team_repository" "simde_oauth_pda_utc" {
  team_id    = var.teams.simde.id
  repository = github_repository.oauth_pda_utc.name
  permission = "maintain"
}
