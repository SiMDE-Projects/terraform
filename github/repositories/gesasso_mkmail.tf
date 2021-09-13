### Gesasso Mk Mail

resource "github_repository" "gesasso_mkmail" {
  allow_merge_commit     = true
  allow_rebase_merge     = true
  allow_squash_merge     = true
  archived               = false
  auto_init              = false
  delete_branch_on_merge = true
  description            = "Le nécessaire pour les mails"
  has_downloads          = false
  has_issues             = true
  has_projects           = true
  has_wiki               = false
  name                   = "gesasso_mkmail"
  visibility             = "public"
  vulnerability_alerts   = true
}

resource "github_branch_protection" "gesasso_mkmail_master" {
  repository_id     = github_repository.gesasso_mkmail.node_id
  pattern           = "main"
  push_restrictions = [var.teams.simde.node_id]
  required_pull_request_reviews {
    restrict_dismissals             = true
    dismiss_stale_reviews           = true
    dismissal_restrictions          = [var.teams.simde.node_id]
    require_code_owner_reviews      = true
    required_approving_review_count = 1
  }
}

resource "github_team_repository" "simde_gesasso_mkmail" {
  team_id    = var.teams.simde.id
  repository = github_repository.gesasso_mkmail.name
  permission = "maintain"
}

resource "github_team_repository" "gesasso_gesasso_mkmail" {
  team_id    = var.teams.gesasso.id
  repository = github_repository.gesasso_mkmail.name
  permission = "maintain"
}