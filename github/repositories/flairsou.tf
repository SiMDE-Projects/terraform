### flairsou-api

resource "github_repository" "flairsou-api" {
  allow_merge_commit     = true
  allow_rebase_merge     = true
  allow_squash_merge     = true
  archived               = false
  auto_init              = false
  delete_branch_on_merge = true
  description            = "Outil de tresorerie associative - API"
  has_downloads          = false
  has_issues             = true
  has_projects           = true
  has_wiki               = true
  topics = [
    "django",
    "reactjs",
    "service",
    "tresorerie"
  ]
  name                 = "flairsou-api"
  visibility           = "public"
  vulnerability_alerts = true
}

resource "github_branch_protection" "flairsou-api_master" {
  repository_id     = github_repository.flairsou-api.node_id
  pattern           = "main"
  push_restrictions = [var.teams.simde.node_id]
  required_status_checks {
    strict = true
    contexts = ["Build Frontend", "Test API"]
  }
}

resource "github_repository_project" "flairsou-api_main" {
  name       = "Flairsou API Project"
  repository = github_repository.flairsou-api.name
  body       = "Main project's tasks"
}

resource "github_project_column" "flairsou-api_main_todo" {
  project_id = github_repository_project.flairsou-api_main.id
  name       = "TODO"
}

resource "github_project_column" "flairsou-api_main_doing" {
  project_id = github_repository_project.flairsou-api_main.id
  name       = "DOING"
}

resource "github_project_column" "flairsou-api_main_codeReview" {
  project_id = github_repository_project.flairsou-api_main.id
  name       = "CODE REVIEW"
}

resource "github_project_column" "flairsou-api_main_approved" {
  project_id = github_repository_project.flairsou-api_main.id
  name       = "APPROVED"
}

resource "github_project_column" "flairsou-api_main_done" {
  project_id = github_repository_project.flairsou-api_main.id
  name       = "DONE"
}


resource "github_team_repository" "simde_flairsou-api" {
  team_id    = var.teams.simde.id
  repository = github_repository.flairsou-api.name
  permission = "maintain"
}

resource "github_team_repository" "flairsou_flairsou-api" {
  team_id    = var.teams.flairsou.id
  repository = github_repository.flairsou-api.name
  permission = "maintain"
}

resource "tls_private_key" "flairsou_ssh_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "github_repository_deploy_key" "flairsou_deploy_key" {
  title      = "Main deploy key"
  repository = github_repository.flairsou-api.name
  key        = tls_private_key.flairsou_ssh_key.public_key_openssh
  read_only  = "true"
}
