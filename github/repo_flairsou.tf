### flairsou

resource github_repository flairsou {
  allow_merge_commit     = true
  allow_rebase_merge     = true
  allow_squash_merge     = true
  archived               = false
  auto_init              = false
  delete_branch_on_merge = true
  description            = "Outil de tresorerie associative"
  has_downloads          = false
  has_issues             = true
  has_projects           = true
  has_wiki               = false

  name                 = "flairsou"
  visibility           = "public"
  vulnerability_alerts = true
}

resource github_branch_protection flairsou_master {
  repository_id     = github_repository.flairsou.node_id
  pattern           = "main"
  push_restrictions = [github_team.simde.node_id]
  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    dismissal_restrictions          = [github_team.simde.node_id]
    require_code_owner_reviews      = true
    required_approving_review_count = 1
  }
}

resource github_repository_project flairsou_main {
  name       = "Flairsou Main Project"
  repository = github_repository.flairsou.name
  body       = "Main project's tasks"
}

resource github_project_column flairsou_main_todo {
  project_id = github_repository_project.flairsou_main.id
  name       = "TODO"
}

resource github_project_column flairsou_main_doing {
  project_id = github_repository_project.flairsou_main.id
  name       = "DOING"
}

resource github_project_column flairsou_main_codeReview {
  project_id = github_repository_project.flairsou_main.id
  name       = "CODE REVIEW"
}

resource github_project_column flairsou_main_approved {
  project_id = github_repository_project.flairsou_main.id
  name       = "APPROVED"
}

resource github_project_column flairsou_main_done {
  project_id = github_repository_project.flairsou_main.id
  name       = "DONE"
}