resource "github_repository" "uvweb" {
  name          = "uvweb"
  description   = "UTC's lecture-rating platform"
  has_downloads = true
  has_issues    = true
  has_projects  = true
  has_wiki      = true
  archived      = true
}


data "github_branch" "uvweb_master" {
  repository = github_repository.uvweb.name
  branch     = "master"
}

resource "github_branch_default" "uvweb" {
  repository = github_repository.uvweb.name
  branch     = data.github_branch.uvweb_master.branch
}

resource "github_branch_protection_v3" "uvweb_master" {
  repository     = github_repository.uvweb.name
  branch         = data.github_branch.uvweb_master.branch
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