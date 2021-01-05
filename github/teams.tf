### Jeffrey

resource github_team jeffrey {
  name        = "Jeffrey"
  description = "Developpeurs de Jeffrey"
  privacy     = "closed"
}

resource github_team_repository jeffrey_jeffrey {
  team_id    = github_team.jeffrey.id
  repository = github_repository.jeffrey.name
  permission = "push"
}

resource github_team_repository jeffrey_jeffreyApi {
  team_id    = github_team.jeffrey.id
  repository = github_repository.jeffreyApi.name
  permission = "push"
}

### Flairsou

resource github_team flairsou {
  name        = "Flairsou"
  description = "Developpeurs de Flairsou"
  privacy     = "closed"
}

resource github_team_repository flairsou {
  team_id    = github_team.flairsou.id
  repository = github_repository.flairsou.name
  permission = "maintain"
}

### SiMDE admins

resource github_team simde {
  name        = "SiMDE"
  description = "Administrateurs du SiMDE"
  privacy     = "closed"
}

resource github_team_repository simde_flairsou {
  team_id    = github_team.simde.id
  repository = github_repository.flairsou.name
  permission = "maintain"
}

resource github_team_repository simde_jeffrey {
  team_id    = github_team.simde.id
  repository = github_repository.jeffrey.name
  permission = "maintain"
}

resource github_team_repository simde_jeffreyApi {
  team_id    = github_team.simde.id
  repository = github_repository.jeffreyApi.name
  permission = "maintain"
}

resource github_team_repository simde_terraform {
  team_id    = github_team.simde.id
  repository = github_repository.terraform.name
  permission = "maintain"
}