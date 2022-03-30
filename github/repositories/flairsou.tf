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

resource "github_repository_deploy_key" "flairsou_deploy_key" {
  title      = "Main deploy key"
  repository = github_repository.flairsou-api.name
  key        = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCYeBxjcUQGKe/xEAmzHapTJCRoHQWO/UC4r6r2D+bf3O1Ll/fCjmQGoKeAdjLi19zZDf/GaXnK3bkjFMTQ5k7u5rbN11tFP+ST2HVKHJSIu06u0Vb7ex+CQEmtw0C8DQhN0bX2c/SHgDaMW86WzppaIg1DuOTrd9MFGl0Je56sh9raFgb6xLX8mqnjxP2wTRr7WrB0Do4wgS5jr8p2NaJkGfY9xMqXGH+FNAkt7N/E7fb4OzQE4JTCvycqscnycKoxbeo2heEnH1l7SoswFzJ1T+1qCeSzFabHW/jgJk7cn5ghA+/Sirzomd71qdA+CdxrZ0L+nS5dCqRVP8YhYxv36V7kQz+N8LK3BSIpQepZr1Jrxg122URmGzWZ3H0tG2phApcznjbDuWRqqmL57nRHLN6kTZJWhru/SLbwHkxUdUurWijONLUl9RWGZd7ZnXZUnn4DElIJ16cntdX5mKqapD3Rhz5m7tTrHhYBmBJnmt84N0aQUvj53upglg5/+r0= simde@python.mde.utc"
  read_only  = "true"
}
