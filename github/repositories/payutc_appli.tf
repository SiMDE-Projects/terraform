### Application Pay'UTC new gen

resource "github_repository" "payutc_appli" {
  allow_merge_commit     = true
  allow_rebase_merge     = true
  allow_squash_merge     = true
  archived               = false
  auto_init              = false
  delete_branch_on_merge = true
  description            = "Application mobile Pay'UTC (non officielle)"
  has_downloads          = false
  has_issues             = true
  has_projects           = true
  has_wiki               = false
  name                   = "payutc-appli"
  topics                 = ["payutc"]
  visibility             = "public"
  vulnerability_alerts   = true
}

resource "github_branch_protection" "payutc_appli_master" {
  repository_id     = github_repository.payutc_appli.name
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

resource "github_team_repository" "simde_payutc_appli" {
  team_id    = var.teams.simde.id
  repository = github_repository.payutc_appli.name
  permission = "maintain"
}
