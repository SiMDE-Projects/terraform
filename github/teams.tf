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

###############################
###   ORIGINAL ORGANIZATION ###
###############################

### Application UTC/BDE
resource github_team application_utcbde {
  provider    = github.old
  name        = "Application UTC/BDE"
  description = "Developpeurs de l'application UTC/BDE"
  privacy     = "closed"
}

resource github_team cloud {
  provider    = github.old
  name        = "Cloud"
  description = "Développer un cloud avec Nextcloud"
  privacy     = "closed"
}

resource github_team covoit_utc {
  provider    = github.old
  name        = "Covoit'UTC"
  description = "Développer l'application de Covoiturage"
  privacy     = "closed"
}
resource github_team gesasso {
  provider    = github.old
  name        = "Gesasso"
  description = "Développer le gestionnaire des associations"
  privacy     = "closed"
}
resource github_team locky {
  provider    = github.old
  name        = "Locky"
  description = ""
  privacy     = "closed"
}
resource github_team payutc {
  provider    = github.old
  name        = "PayUTC"
  description = "Développer les outils et les APIs PayUTC"
  privacy     = "closed"
}
resource github_team planner {
  provider    = github.old
  name        = "Planner"
  description = "Développer le plannificateur de permanences"
  privacy     = "closed"
}
resource github_team portail {
  provider    = github.old
  name        = "Portail"
  description = "Développer le Portail"
  privacy     = "closed"
}
resource github_team woolly {
  provider    = github.old
  name        = "Woolly"
  description = "Développer la nouvelle billetterie UTC"
  privacy     = "closed"
}