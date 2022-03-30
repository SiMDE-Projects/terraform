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
  topics                 = [
    "gesasso",
               "django",
           "docker-compose",
           "react",
          "service",

  ]
  visibility             = "public"
  vulnerability_alerts   = true
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

resource "github_repository_deploy_key" "gesasso_mkultra_deploy_key" {
  title      = "Main deploy key"
  repository = github_repository.gesasso_mkultra.name
  key        = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC2lsok3/Wsua6YGe2K4nSZyaqfh5UA3HlTy9WSn4i1SuAmxmwl1HEIGewrFucuVI/DCAROHI9zYpILh8z/QKOFQtdCeswmkss2XyEa/yfp9ElbNvrdV+A9rQDb6TgNp7KBykkxMWUvGCklSll1Cq4k8vCLc4jv26sJO3PT/Qb2OxmqmLL3LGohfiS1Cdao5b1KXxk8Q9ml/9iJkBxFCIStepkphaWyiIa+wqv1n4l5cS8K9bVVhkFAWByiw1nJ4CmZX6wHpe77qI9c8a+zQPJCHp0GbcSPrYUmr5lAZ3aZ6pZdhYSFc2jKoNyy9rjR8NyLKXBRtaTv5VJ5Umt3Rdin94KxrZ4ED65RiA7UEmTunJOjHqLt90fWuR4l9Sqs+yXDHGv+liF96XwofeseKSaKCitgXQUzz0IvKHCC0IKDh5aJpwKGILforMLJgRrjMZWpI/8pUFIvdoRdil7V8vQU7Ve2ZEXpZkkd9b6OyQp/DJ9RziBHbn3pWME34/A2dV8= simde@python.mde.utc"
  read_only  = "true"
}
