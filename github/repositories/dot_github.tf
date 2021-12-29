### .github

resource "github_repository" "dot_github" {
  allow_merge_commit     = true
  allow_rebase_merge     = true
  allow_squash_merge     = true
  archived               = false
  auto_init              = true
  delete_branch_on_merge = true
  description            = "Template repository for this organization"
  has_downloads          = false
  has_issues             = false
  has_projects           = false
  has_wiki               = false
  name                   = ".github"
  topics                 = [
    "template",
    "github",
    "ci",
    "cd",
  ]
  visibility             = "public"
  vulnerability_alerts   = true
}

resource "github_branch_protection" "dot_github_master" {
  repository_id     = github_repository.dot_github.name
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

resource "github_team_repository" "simde_dot_github" {
  team_id    = var.teams.simde.id
  repository = github_repository.dot_github.name
  permission = "maintain"
}
