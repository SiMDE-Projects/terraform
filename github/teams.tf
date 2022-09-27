locals {
  teams = {
    simde              = github_team.simde
    application_utcbde = github_team.application_utcbde
    cloud              = github_team.cloud
    covoit_utc         = github_team.covoit_utc
    gesasso            = github_team.gesasso
    locky              = github_team.locky
    payutc             = github_team.payutc
    planner            = github_team.planner
    portail            = github_team.portail
    woolly             = github_team.woolly
    emploidut          = github_team.emploidut
    flairsou           = github_team.flairsou
    sparkle            = github_team.sparkle
  }
}

### Flairsou

resource "github_team" "flairsou" {
  name        = "Flairsou"
  description = "Developpeurs de Flairsou"
  privacy     = "closed"
}

### SiMDE admins

resource "github_team" "simde" {
  name        = "SiMDE"
  description = "Administrateurs du SiMDE"
  privacy     = "closed"
}

resource "github_team_repository" "simde_terraform" {
  team_id    = github_team.simde.id
  repository = github_repository.terraform.name
  permission = "maintain"
}

###############################
###   ORIGINAL ORGANIZATION ###
###############################

### Application UTC/BDE
resource "github_team" "application_utcbde" {
  provider    = github.old
  name        = "Application UTC/BDE"
  description = "Developpeurs de l'application UTC/BDE"
  privacy     = "closed"
}

resource "github_team_repository" "application_utcbde_utc_mobile" {
  provider   = github.old
  team_id    = github_team.application_utcbde.id
  repository = github_repository.utc_mobile.name
  permission = "push"
}

### Cloud

resource "github_team" "cloud" {
  provider    = github.old
  name        = "Cloud"
  description = "Développer un cloud avec Nextcloud"
  privacy     = "closed"
}

### Covoit-Utc

resource "github_team" "covoit_utc" {
  provider    = github.old
  name        = "Covoit'UTC"
  description = "Développer l'application de Covoiturage"
  privacy     = "closed"
}

resource "github_team_repository" "covoitutc_covoitutc" {
  provider   = github.old
  team_id    = github_team.covoit_utc.id
  repository = github_repository.covoitutc.name
  permission = "push"
}

### Locky

resource "github_team" "locky" {
  provider    = github.old
  name        = "Locky"
  description = ""
  privacy     = "closed"
}

resource "github_team_repository" "locky_locky" {
  provider   = github.old
  team_id    = github_team.locky.id
  repository = github_repository.locky.name
  permission = "push"
}

# Planner

resource "github_team" "planner" {
  provider    = github.old
  name        = "Planner"
  description = "Développer le plannificateur de permanences"
  privacy     = "closed"
}

resource "github_team_repository" "planner_planner" {
  provider   = github.old
  team_id    = github_team.planner.id
  repository = github_repository.planner.name
  permission = "push"
}

### Portail

resource "github_team" "portail" {
  provider    = github.old
  name        = "Portail"
  description = "Développer le Portail"
  privacy     = "closed"
}

resource "github_team_repository" "portail_portail" {
  provider   = github.old
  team_id    = github_team.portail.id
  repository = github_repository.portail.name
  permission = "push"
}

resource "github_team_repository" "portail_portail_old" {
  provider   = github.old
  team_id    = github_team.portail.id
  repository = github_repository.portail_old.name
  permission = "push"
}

resource "github_team_repository" "portail_utc_mobile" {
  provider   = github.old
  team_id    = github_team.portail.id
  repository = github_repository.utc_mobile.name
  permission = "push"
}

### Woolly

resource "github_team" "woolly" {
  provider    = github.old
  name        = "Woolly"
  description = "Développer la nouvelle billetterie UTC"
  privacy     = "closed"
}

resource "github_team_repository" "woolly_woolly_api" {
  provider   = github.old
  team_id    = github_team.woolly.id
  repository = github_repository.woolly_api.name
  permission = "push"
}

resource "github_team_repository" "woolly_woolly_ui" {
  provider   = github.old
  team_id    = github_team.woolly.id
  repository = github_repository.woolly_ui.name
  permission = "push"
}

### Emploidut

resource "github_team" "emploidut" {
  name        = "Emploidut"
  description = "Développer la nouvelle version de Emploidut"
  privacy     = "closed"
}

resource "github_team_repository" "emploidut_emploidutApi" {
  team_id    = github_team.emploidut.id
  repository = github_repository.emploidutApi.name
  permission = "push"
  depends_on = [
    github_repository.emploidutApi,
    github_team.emploidut
  ]
}

### Gesasso

resource "github_team" "gesasso" {
  name        = "Gesasso"
  description = "L'outil de gestion des assos au SiMDE"
  privacy     = "closed"
}

### Sparkle

resource "github_team" "sparkle" {
  name        = "Sparkle"
  description = "Développer la nouvelle version de Sparkle"
  privacy     = "closed"
}


### UVWeb

resource "github_team" "uvweb" {
  name        = "UVWeb"
  description = "Développer la nouvelle version de UVWeb"
  privacy     = "closed"
}
