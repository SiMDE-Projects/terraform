resource "github_repository" "ginger2" {
  archived               = false
  delete_branch_on_merge = true
  description            = "Gestion automatisée des cotisation BDE UTC et des identifications d'utilisateurs par login ou badge"
  has_downloads          = false
  has_issues             = true
  has_projects           = false
  has_wiki               = false
  name                   = "ginger2"
  visibility             = "public"
  vulnerability_alerts   = true
  topics                 = [
    "php",
    "service",
  ]
}

data "github_branch" "ginger2_master" {
  repository = "ginger2"
  branch     = "master"
}

resource "github_branch_default" "ginger2" {
  repository = github_repository.ginger2.name
  branch     = data.github_branch.ginger2_master.branch
}

resource "github_branch_protection_v3" "ginger2_master" {
  repository     = github_repository.ginger2.name
  branch         = data.github_branch.ginger2_master.branch
  enforce_admins = true

  required_status_checks {
    strict   = true
    contexts = ["Build and Test"]
  }

  required_pull_request_reviews {
    dismissal_teams = [var.teams.simde.slug]
  }

  restrictions {
    teams = [var.teams.simde.slug]
  }
}