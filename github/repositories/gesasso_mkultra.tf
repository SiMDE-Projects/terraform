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

#### Labels
resource "github_issue_label" "gesasso_bug" {
  repository = github_repository.gesasso_mkultra.name
  name       = "bug"
  color      = "d73a4a"
}

resource "github_issue_label" "gesasso_wontfix" {
  repository = github_repository.gesasso_mkultra.name
  name       = "wontfix"
  color      = "ffffff"
}

resource "github_issue_label" "gesasso_documentation" {
  repository = github_repository.gesasso_mkultra.name
  name       = "documentation"
  color      = "0075ca"
}

resource "github_issue_label" "gesasso_idea" {
  repository = github_repository.gesasso_mkultra.name
  name       = "idea"
  color      = "182F08"
}

resource "github_issue_label" "gesasso_task" {
  repository = github_repository.gesasso_mkultra.name
  name       = "task"
  color      = "B89826"
}

#### Project
resource "github_repository_project" "gesasso_project" {
  name       = "Gesasso project"
  repository = github_repository.gesasso_mkultra.name
  body       = "Gesasso project management"
}

resource "github_project_column" "gesasso_project_todo" {
  project_id = github_repository_project.gesasso_project.id
  name       = "TODO"
}

resource "github_project_column" "gesasso_project_doing" {
  project_id = github_repository_project.gesasso_project.id
  name       = "DOING"
}

resource "github_project_column" "gesasso_project_codeReview" {
  project_id = github_repository_project.gesasso_project.id
  name       = "CODE REVIEW"
}

resource "github_project_column" "gesasso_project_approved" {
  project_id = github_repository_project.gesasso_project.id
  name       = "APPROVED"
}

resource "github_project_column" "gesasso_project_done" {
  project_id = github_repository_project.gesasso_project.id
  name       = "DONE"
}

resource "github_project_column" "gesasso_project_wontdo" {
  project_id = github_repository_project.gesasso_project.id
  name       = "WON'T DO"
}