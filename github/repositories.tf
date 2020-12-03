### Terraform

resource github_repository terraform {
  allow_merge_commit     = true
  allow_rebase_merge     = true
  allow_squash_merge     = true
  archived               = false
  auto_init              = false
  delete_branch_on_merge = true
  description            = "Définition IAC du SiMDE"
  has_downloads          = false
  has_issues             = false
  has_projects           = false
  has_wiki               = false
  topics = [
    "infrastructure-as-code"
  ]
  is_template          = false
  name                 = "terraform"
  visibility           = "public"
  vulnerability_alerts = true
}

data github_branch terraform_main {
  repository = "terraform"
  branch     = "main"
}

resource github_branch_default terraform {
  repository = github_repository.terraform.name
  branch     = data.github_branch.terraform_main.branch
}

resource github_branch_protection terraform_main {
  repository_id     = github_repository.terraform.node_id
  pattern           = "main"
  push_restrictions = [github_team.simde.node_id]
  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    dismissal_restrictions          = [github_team.simde.node_id]
    require_code_owner_reviews      = true
    required_approving_review_count = 1
  }

  required_status_checks {
    contexts = [
      "Terraform Plan",
    ]
    strict = true
  }
}

resource github_issue_label terraform_toApply {
  repository = github_repository.terraform.name
  name       = "To Apply"
  color      = "FFFF00"
}

resource github_issue_label terraform_applied {
  repository = github_repository.terraform.name
  name       = "Applied"
  color      = "00FF00"
}

### jeffrey

resource github_repository jeffrey {
  allow_merge_commit     = true
  allow_rebase_merge     = true
  allow_squash_merge     = true
  archived               = false
  auto_init              = false
  delete_branch_on_merge = true
  description            = "Service de click&delivery associatif (et drole)"
  has_downloads          = false
  has_issues             = true
  has_projects           = true
  has_wiki               = false

  homepage_url = "https://jeffrey.etu-utc.fr/"
  is_template  = false
  name         = "jeffrey"
  topics = [
    "front"
  ]
  visibility           = "public"
  vulnerability_alerts = true
}

data "github_branch" "jeffrey_master" {
  repository = "jeffrey"
  branch     = "master"
}

resource github_branch_default jeffrey {
  repository = github_repository.jeffrey.name
  branch     = data.github_branch.jeffrey_master.branch
}

resource github_branch_protection jeffrey_master {
  repository_id     = github_repository.jeffrey.node_id
  pattern           = "master"
  push_restrictions = [github_team.simde.node_id]
  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    dismissal_restrictions          = [github_team.simde.node_id]
    require_code_owner_reviews      = true
    required_approving_review_count = 1
  }

  required_status_checks {
    contexts = [
      "Check i18next keys in fr-FR",
      "Travis CI - Pull Request",
    ]
    strict = true
  }
}

resource github_repository_project jeffrey_main {
  name       = "Jeffrey Main Project"
  repository = github_repository.jeffrey.name
  body       = "Main project's tasks"
}

resource github_project_column jeffrey_main_todo {
  project_id = github_repository_project.jeffrey_main.id
  name       = "TODO"
}

resource github_project_column jeffrey_main_doing {
  project_id = github_repository_project.jeffrey_main.id
  name       = "DOING"
}

resource github_project_column jeffrey_main_codeReview {
  project_id = github_repository_project.jeffrey_main.id
  name       = "CODE REVIEW"
}

resource github_project_column jeffrey_main_approved {
  project_id = github_repository_project.jeffrey_main.id
  name       = "APPROVED"
}

resource github_project_column jeffrey_main_done {
  project_id = github_repository_project.jeffrey_main.id
  name       = "DONE"
}

### jeffrey-api

resource github_repository jeffreyApi {
  allow_merge_commit     = true
  allow_rebase_merge     = true
  allow_squash_merge     = true
  archived               = false
  auto_init              = false
  delete_branch_on_merge = true
  description            = "Backend de jeffrey"
  has_downloads          = false
  has_issues             = true
  has_projects           = true
  has_wiki               = false
  is_template            = false
  name                   = "jeffrey-api"
  topics = [
    "api"
  ]
  visibility           = "public"
  vulnerability_alerts = true
}

data "github_branch" "jeffreyApi_master" {
  repository = "jeffrey-api"
  branch     = "master"
}

resource github_branch_default jeffreyApi {
  repository = github_repository.jeffreyApi.name
  branch     = data.github_branch.jeffreyApi_master.branch
}

resource github_branch_protection jeffreyApi_master {
  repository_id     = github_repository.jeffreyApi.node_id
  pattern           = "master"
  push_restrictions = [github_team.simde.node_id]
  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    dismissal_restrictions          = [github_team.simde.node_id]
    require_code_owner_reviews      = true
    required_approving_review_count = 1
  }

  //  required_status_checks {
  //    contexts = []
  //    strict   = true
  //  }
}

resource github_repository_project jeffreyApi_main {
  name       = "Jeffrey API Main Project"
  repository = github_repository.jeffreyApi.name
  body       = "Main project's tasks"
}

resource github_project_column jeffreyApi_main_todo {
  project_id = github_repository_project.jeffreyApi_main.id
  name       = "TODO"
}

resource github_project_column jeffreyApi_main_doing {
  project_id = github_repository_project.jeffreyApi_main.id
  name       = "DOING"
}

resource github_project_column jeffreyApi_main_codeReview {
  project_id = github_repository_project.jeffreyApi_main.id
  name       = "CODE REVIEW"
}

resource github_project_column jeffreyApi_main_approved {
  project_id = github_repository_project.jeffreyApi_main.id
  name       = "APPROVED"
}

resource github_project_column jeffreyApi_main_done {
  project_id = github_repository_project.jeffreyApi_main.id
  name       = "DONE"
}