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
  topics                 = [
    "gesasso"
  ]
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

resource "github_repository_deploy_key" "gesasso_mkmail_deploy_key" {
  title      = "Main deploy key"
  repository = github_repository.gesasso_mkmail.name
  key        = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCbKRRdQi20inmlRGEMGoTE3cr3JQm0WpuIOsOzYo8Mta6MpU/bdg6Ju0JmfbDU5k3ZyW9J42iWTlBRVVovyJGsD8He2H4HlqXLyKMXBtleEyD2zAHS/e0WnxOa55T1CKQkk/Iq8IIaedU4jrQ8NOun+be1Ij0UtrLfGCjOTTYKjamm4zbMTguHH1VGXOcuhsPcVzb7Sxq5gdyW4RMTvRq2u336iCACtFULGfeEZACUbupG/+ZI+SOXDfPLRMszPx3RQ/fwrMdTgipF+cB4Bo6ihaAsXaxRapY9NYHULpgWCcGwsZSwnaH8UDV3IRsvohYZV8uRGdMSNSRWmZ+4J8PP gesasso@mail.mde.utc"
  read_only  = "true"
}