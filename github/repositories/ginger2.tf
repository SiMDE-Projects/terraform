resource "github_repository" "ginger2" {
  provider               = github.old
  archived               = false
  delete_branch_on_merge = true
  description            = ""
  has_downloads          = true
  has_issues             = true
  has_projects           = true
  has_wiki               = true
  name                   = "ginger2"
  visibility             = "public"
  vulnerability_alerts   = true
}

data "github_branch" "ginger2_master" {
  provider   = github.old
  repository = "ginger2"
  branch     = "master"
}

resource "github_branch_default" "ginger2" {
  provider   = github.old
  repository = github_repository.ginger2.name
  branch     = data.github_branch.ginger2_master.branch
}

resource "github_branch_protection_v3" "ginger2_master" {
  provider       = github.old
  repository     = github_repository.ginger2.name
  branch         = data.github_branch.ginger2_master.branch
  enforce_admins = true

  required_status_checks {
    strict   = true
    contexts = ["test"]
  }

  required_pull_request_reviews {
    dismissal_teams = [var.teams.simde.slug]
  }

  restrictions {
    teams = [var.teams.simde.slug]
  }
}