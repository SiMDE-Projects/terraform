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

resource github_issue_label github {
  repository = github_repository.terraform.name
  name       = "github"
  color      = "0000FF"
}

resource github_issue_label discord {
  repository = github_repository.terraform.name
  name       = "discord"
  color      = "0000FF"
}

resource github_issue_label discord_member {
  repository = github_repository.terraform.name
  name       = "discord_member"
  color      = "0000FF"
}

resource github_issue_label github_user {
  repository = github_repository.terraform.name
  name       = "github_user"
  color      = "0000FF"
}

resource github_issue_label repository {
  repository = github_repository.terraform.name
  name       = "repository"
  color      = "0000FF"
}

resource github_issue_label channels {
  repository = github_repository.terraform.name
  name       = "channels"
  color      = "0000FF"
}

resource github_issue_label discord_permissions {
  repository = github_repository.terraform.name
  name       = "discord_permissions"
  color      = "0000FF"
}

resource github_issue_label roles {
  repository = github_repository.terraform.name
  name       = "roles"
  color      = "0000FF"
}

resource github_issue_label discord_server {
  repository = github_repository.terraform.name
  name       = "discord_server"
  color      = "0000FF"
}

resource github_issue_label variables {
  repository = github_repository.terraform.name
  name       = "variables"
  color      = "0000FF"
}

resource github_issue_label teams {
  repository = github_repository.terraform.name
  name       = "teams"
  color      = "0000FF"
}

resource github_issue_label invites {
  repository = github_repository.terraform.name
  name       = "invites"
  color      = "0000FF"
}

resource github_issue_label modules {
  repository = github_repository.terraform.name
  name       = "modules"
  color      = "0000FF"
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

###############################
###   ORIGINAL ORGANIZATION ###
###############################


### ginger

resource github_repository ginger {
  provider               = github.old
  archived               = false
  delete_branch_on_merge = true
  description            = "Outil de gestion des cotisants"
  has_downloads          = true
  has_issues             = true
  has_projects           = true
  has_wiki               = true
  name                   = "ginger"
  visibility             = "public"
  vulnerability_alerts   = true
}

data github_branch ginger_master {
  provider   = github.old
  repository = "ginger"
  branch     = "master"
}

resource github_branch_default ginger {
  provider   = github.old
  repository = github_repository.ginger.name
  branch     = data.github_branch.ginger_master.branch
}


### ginger-client

resource github_repository ginger_client {
  provider               = github.old
  archived               = false
  delete_branch_on_merge = true
  description            = "Clients pour Ginger"
  has_downloads          = true
  has_issues             = true
  has_projects           = true
  has_wiki               = true
  name                   = "ginger-client"
  visibility             = "public"
  vulnerability_alerts   = true
}

data github_branch ginger_client_master {
  provider   = github.old
  repository = "ginger-client"
  branch     = "master"
}

resource github_branch_default ginger_client {
  provider   = github.old
  repository = github_repository.ginger_client.name
  branch     = data.github_branch.ginger_client_master.branch
}


### koala

resource github_repository koala {
  provider               = github.old
  archived               = false
  delete_branch_on_merge = true
  description            = ""
  has_downloads          = true
  has_issues             = true
  has_projects           = true
  has_wiki               = true
  name                   = "koala"
  visibility             = "public"
  vulnerability_alerts   = true
}

data github_branch koala_master {
  provider   = github.old
  repository = "koala"
  branch     = "master"
}

resource github_branch_default koala {
  provider   = github.old
  repository = github_repository.koala.name
  branch     = data.github_branch.koala_master.branch
}


### portail-old

resource github_repository portail_old {
  provider               = github.old
  archived               = false
  delete_branch_on_merge = true
  description            = "Portail des associations de l'UTC"
  has_downloads          = true
  has_issues             = true
  has_projects           = true
  has_wiki               = true
  name                   = "portail-old"
  visibility             = "public"
  vulnerability_alerts   = true
}

data github_branch portail_old_master {
  provider   = github.old
  repository = "portail-old"
  branch     = "master"
}

resource github_branch_default portail_old {
  provider   = github.old
  repository = github_repository.portail_old.name
  branch     = data.github_branch.portail_old_master.branch
}


### gesmail-old

resource github_repository gesmail_old {
  provider               = github.old
  archived               = false
  delete_branch_on_merge = true
  description            = "Outil de gestion des mails du SiMDE"
  has_downloads          = true
  has_issues             = true
  has_projects           = true
  has_wiki               = true
  name                   = "gesmail-old"
  visibility             = "public"
  vulnerability_alerts   = true
}

data github_branch gesmail_old_master {
  provider   = github.old
  repository = "gesmail-old"
  branch     = "master"
}

resource github_branch_default gesmail_old {
  provider   = github.old
  repository = github_repository.gesmail_old.name
  branch     = data.github_branch.gesmail_old_master.branch
}


### gesassos2_old

resource github_repository gesassos2_old {
  provider               = github.old
  archived               = true
  delete_branch_on_merge = true
  description            = "Outil de gestion des comptes assos du SiMDE"
  has_downloads          = true
  has_issues             = true
  has_projects           = true
  has_wiki               = true
  name                   = "gesassos2_old"
  visibility             = "public"
  vulnerability_alerts   = false
}

### faux-ginger

resource github_repository faux_ginger {
  provider               = github.old
  archived               = false
  delete_branch_on_merge = true
  description            = "Un faux outil cotisant pour faire des tests en local"
  has_downloads          = true
  has_issues             = true
  has_projects           = true
  has_wiki               = true
  name                   = "faux-ginger"
  visibility             = "public"
  vulnerability_alerts   = true
}

data github_branch faux_ginger_master {
  provider   = github.old
  repository = "faux-ginger"
  branch     = "master"
}

resource github_branch_default faux_ginger {
  provider   = github.old
  repository = github_repository.faux_ginger.name
  branch     = data.github_branch.faux_ginger_master.branch
}


### python-hosting

resource github_repository python_hosting {
  provider               = github.old
  archived               = false
  delete_branch_on_merge = true
  description            = ""
  has_downloads          = true
  has_issues             = true
  has_projects           = true
  has_wiki               = true
  name                   = "python-hosting"
  visibility             = "public"
  vulnerability_alerts   = true
}

data github_branch python_hosting_master {
  provider   = github.old
  repository = "python-hosting"
  branch     = "master"
}

resource github_branch_default python_hosting {
  provider   = github.old
  repository = github_repository.python_hosting.name
  branch     = data.github_branch.python_hosting_master.branch
}


### bdecotiz

resource github_repository bdecotiz {
  provider               = github.old
  archived               = false
  delete_branch_on_merge = true
  description            = "Client web permettant de cotiser en ligne au BDE."
  has_downloads          = true
  has_issues             = true
  has_projects           = true
  has_wiki               = true
  name                   = "bdecotiz"
  visibility             = "public"
  vulnerability_alerts   = true
}

data github_branch bdecotiz_master {
  provider   = github.old
  repository = "bdecotiz"
  branch     = "master"
}

resource github_branch_default bdecotiz {
  provider   = github.old
  repository = github_repository.bdecotiz.name
  branch     = data.github_branch.bdecotiz_master.branch
}


### paymoi

resource github_repository paymoi {
  provider               = github.old
  archived               = true
  delete_branch_on_merge = true
  description            = "Le site (EN NODE PAUL EN NODE) qui permet de faire des virements avec payutc <3"
  has_downloads          = true
  has_issues             = true
  has_projects           = true
  has_wiki               = true
  name                   = "paymoi"
  visibility             = "public"
  vulnerability_alerts   = false
}

### woolly-api

resource github_repository woolly_api {
  provider               = github.old
  archived               = false
  delete_branch_on_merge = true
  description            = "The brand new online ticket office for UTC student organizations"
  has_downloads          = true
  has_issues             = true
  has_projects           = true
  has_wiki               = true
  name                   = "woolly-api"
  visibility             = "public"
  vulnerability_alerts   = true
}

data github_branch woolly_api_develop {
  provider   = github.old
  repository = "woolly-api"
  branch     = "develop"
}

resource github_branch_default woolly_api {
  provider   = github.old
  repository = github_repository.woolly_api.name
  branch     = data.github_branch.woolly_api_develop.branch
}


### woolly-ui

resource github_repository woolly_ui {
  provider               = github.old
  archived               = true
  delete_branch_on_merge = true
  description            = "The brand new online ticket office for UTC student organizations - user interface "
  has_downloads          = true
  has_issues             = true
  has_projects           = true
  has_wiki               = true
  name                   = "woolly-ui"
  visibility             = "public"
  vulnerability_alerts   = false
}

### gesassos-web

resource github_repository gesassos_web {
  provider               = github.old
  archived               = false
  delete_branch_on_merge = true
  description            = "Gestion des comptes assos pour le SiMDE et les bureaux d'assos"
  has_downloads          = true
  has_issues             = true
  has_projects           = true
  has_wiki               = true
  name                   = "gesassos-web"
  visibility             = "public"
  vulnerability_alerts   = true
}

data github_branch gesassos_web_master {
  provider   = github.old
  repository = "gesassos-web"
  branch     = "master"
}

resource github_branch_default gesassos_web {
  provider   = github.old
  repository = github_repository.gesassos_web.name
  branch     = data.github_branch.gesassos_web_master.branch
}


### ginger2

resource github_repository ginger2 {
  provider               = github.old
  archived               = false
  delete_branch_on_merge = true
  description            = ""
  has_downloads          = true
  has_issues             = true
  has_projects           = true
  has_wiki               = true
  name                   = "ginger2"
  visibility             = "public"
  vulnerability_alerts   = true
}

data github_branch ginger2_master {
  provider   = github.old
  repository = "ginger2"
  branch     = "master"
}

resource github_branch_default ginger2 {
  provider   = github.old
  repository = github_repository.ginger2.name
  branch     = data.github_branch.ginger2_master.branch
}


### woolly-front

resource github_repository woolly_front {
  provider               = github.old
  archived               = false
  delete_branch_on_merge = true
  description            = "The brand new online ticket office for UTC student organizations - user interface"
  has_downloads          = true
  has_issues             = true
  has_projects           = true
  has_wiki               = true
  name                   = "woolly-front"
  visibility             = "public"
  vulnerability_alerts   = true
}

data github_branch woolly_front_develop {
  provider   = github.old
  repository = "woolly-front"
  branch     = "develop"
}

resource github_branch_default woolly_front {
  provider   = github.old
  repository = github_repository.woolly_front.name
  branch     = data.github_branch.woolly_front_develop.branch
}


### welcome

resource github_repository welcome {
  provider               = github.old
  archived               = false
  delete_branch_on_merge = true
  description            = "Index du compte asso du SiMDE"
  has_downloads          = true
  has_issues             = true
  has_projects           = true
  has_wiki               = true
  name                   = "welcome"
  visibility             = "public"
  vulnerability_alerts   = true
}

data github_branch welcome_master {
  provider   = github.old
  repository = "welcome"
  branch     = "master"
}

resource github_branch_default welcome {
  provider   = github.old
  repository = github_repository.welcome.name
  branch     = data.github_branch.welcome_master.branch
}


### jessy

resource github_repository jessy {
  provider               = github.old
  archived               = false
  delete_branch_on_merge = true
  description            = "Application Android permettant d'effectuer des intéractions avec PayUTC"
  has_downloads          = true
  has_issues             = true
  has_projects           = true
  has_wiki               = true
  name                   = "jessy"
  visibility             = "public"
  vulnerability_alerts   = true
}

data github_branch jessy_master {
  provider   = github.old
  repository = "jessy"
  branch     = "master"
}

resource github_branch_default jessy {
  provider   = github.old
  repository = github_repository.jessy.name
  branch     = data.github_branch.jessy_master.branch
}


### jessy-api

resource github_repository jessy_api {
  provider               = github.old
  archived               = false
  delete_branch_on_merge = true
  description            = ""
  has_downloads          = true
  has_issues             = true
  has_projects           = true
  has_wiki               = true
  name                   = "jessy-api"
  visibility             = "public"
  vulnerability_alerts   = true
}

data github_branch jessy_api_master {
  provider   = github.old
  repository = "jessy-api"
  branch     = "master"
}

resource github_branch_default jessy_api {
  provider   = github.old
  repository = github_repository.jessy_api.name
  branch     = data.github_branch.jessy_api_master.branch
}


### portail

resource github_repository portail {
  provider               = github.old
  archived               = false
  delete_branch_on_merge = true
  description            = "Nouvelle API du Portail des Assos de l'UTC"
  has_downloads          = true
  has_issues             = true
  has_projects           = true
  has_wiki               = true
  name                   = "portail"
  visibility             = "public"
  vulnerability_alerts   = true
  topics = [
    "api",
    "assos",
    "laravel",
    "php",
    "portail",
    "student-project",
    "students",
    "utc"
  ]
}

data github_branch portail_develop {
  provider   = github.old
  repository = "portail"
  branch     = "develop"
}

resource github_branch_default portail {
  provider   = github.old
  repository = github_repository.portail.name
  branch     = data.github_branch.portail_develop.branch
}


### beethoven

resource github_repository beethoven {
  provider               = github.old
  archived               = false
  delete_branch_on_merge = true
  description            = "Nouveau système de caisse du Pic qui remplacera Mozart"
  has_downloads          = true
  has_issues             = true
  has_projects           = true
  has_wiki               = true
  name                   = "beethoven"
  visibility             = "public"
  vulnerability_alerts   = true
}

data github_branch beethoven_master {
  provider   = github.old
  repository = "beethoven"
  branch     = "master"
}

resource github_branch_default beethoven {
  provider   = github.old
  repository = github_repository.beethoven.name
  branch     = data.github_branch.beethoven_master.branch
}


### emploidutemps

resource github_repository emploidutemps {
  provider               = github.old
  archived               = false
  delete_branch_on_merge = true
  description            = "Service d'emploidutemps destiné aux étudiants de l'UTC"
  has_downloads          = true
  has_issues             = true
  has_projects           = true
  has_wiki               = true
  name                   = "emploidutemps"
  visibility             = "public"
  vulnerability_alerts   = true
}

data github_branch emploidutemps_2_0 {
  provider   = github.old
  repository = "emploidutemps"
  branch     = "2.0"
}

resource github_branch_default emploidutemps {
  provider   = github.old
  repository = github_repository.emploidutemps.name
  branch     = data.github_branch.emploidutemps_2_0.branch
}


### hackathon-covoit

resource github_repository hackathon_covoit {
  provider               = github.old
  archived               = false
  delete_branch_on_merge = true
  description            = ""
  has_downloads          = true
  has_issues             = true
  has_projects           = true
  has_wiki               = true
  name                   = "hackathon-covoit"
  visibility             = "public"
  vulnerability_alerts   = true
}

data github_branch hackathon_covoit_master {
  provider   = github.old
  repository = "hackathon-covoit"
  branch     = "master"
}

resource github_branch_default hackathon_covoit {
  provider   = github.old
  repository = github_repository.hackathon_covoit.name
  branch     = data.github_branch.hackathon_covoit_master.branch
}


### utc-mobile

resource github_repository utc_mobile {
  provider               = github.old
  archived               = false
  delete_branch_on_merge = true
  description            = "Nouvelle application mobile Portail des Assos - UTC"
  has_downloads          = true
  has_issues             = true
  has_projects           = true
  has_wiki               = true
  name                   = "utc-mobile"
  visibility             = "public"
  vulnerability_alerts   = true
  topics = [
    "android",
    "app",
    "ios",
    "phone",
    "react-native",
    "student-project"
  ]
}

data github_branch utc_mobile_develop {
  provider   = github.old
  repository = "utc-mobile"
  branch     = "develop"
}

resource github_branch_default utc_mobile {
  provider   = github.old
  repository = github_repository.utc_mobile.name
  branch     = data.github_branch.utc_mobile_develop.branch
}


### gesasso2

resource github_repository gesasso2 {
  provider               = github.old
  archived               = false
  delete_branch_on_merge = true
  description            = "Outil de gestion interne du SiMDE"
  has_downloads          = true
  has_issues             = true
  has_projects           = true
  has_wiki               = false
  name                   = "gesasso2"
  visibility             = "public"
  vulnerability_alerts   = true
  topics = [
    "api-client"
  ]
}

data github_branch gesasso2_master {
  provider   = github.old
  repository = "gesasso2"
  branch     = "master"
}

resource github_branch_default gesasso2 {
  provider   = github.old
  repository = github_repository.gesasso2.name
  branch     = data.github_branch.gesasso2_master.branch
}


### covoitutc

resource github_repository covoitutc {
  provider               = github.old
  archived               = false
  delete_branch_on_merge = true
  description            = "Code du Covoiturage UTC"
  has_downloads          = true
  has_issues             = true
  has_projects           = true
  has_wiki               = true
  name                   = "covoitutc"
  visibility             = "public"
  vulnerability_alerts   = true
}

data github_branch covoitutc_master {
  provider   = github.old
  repository = "covoitutc"
  branch     = "master"
}

resource github_branch_default covoitutc {
  provider   = github.old
  repository = github_repository.covoitutc.name
  branch     = data.github_branch.covoitutc_master.branch
}


### planner

resource github_repository planner {
  provider               = github.old
  archived               = false
  delete_branch_on_merge = true
  description            = "Plannificateur de permanences"
  has_downloads          = true
  has_issues             = true
  has_projects           = true
  has_wiki               = true
  name                   = "planner"
  visibility             = "public"
  vulnerability_alerts   = true
}

data github_branch planner_master {
  provider   = github.old
  repository = "planner"
  branch     = "master"
}

resource github_branch_default planner {
  provider   = github.old
  repository = github_repository.planner.name
  branch     = data.github_branch.planner_master.branch
}


### payutc-mobile

resource github_repository payutc_mobile {
  provider               = github.old
  archived               = false
  delete_branch_on_merge = true
  description            = "PayUTC Mobile Application"
  has_downloads          = true
  has_issues             = true
  has_projects           = true
  has_wiki               = true
  name                   = "payutc-mobile"
  visibility             = "public"
  vulnerability_alerts   = true
}

data github_branch payutc_mobile_master {
  provider   = github.old
  repository = "payutc-mobile"
  branch     = "master"
}

resource github_branch_default payutc_mobile {
  provider   = github.old
  repository = github_repository.payutc_mobile.name
  branch     = data.github_branch.payutc_mobile_master.branch
}


### weekmail

resource github_repository weekmail {
  provider               = github.old
  archived               = false
  delete_branch_on_merge = true
  description            = "Nouvelle interface du Weekmail"
  has_downloads          = true
  has_issues             = true
  has_projects           = true
  has_wiki               = true
  name                   = "weekmail"
  visibility             = "public"
  vulnerability_alerts   = true
}

data github_branch weekmail_master {
  provider   = github.old
  repository = "weekmail"
  branch     = "master"
}

resource github_branch_default weekmail {
  provider   = github.old
  repository = github_repository.weekmail.name
  branch     = data.github_branch.weekmail_master.branch
}


### payback

resource github_repository payback {
  provider               = github.old
  archived               = false
  delete_branch_on_merge = true
  description            = ""
  has_downloads          = true
  has_issues             = true
  has_projects           = true
  has_wiki               = true
  name                   = "payback"
  visibility             = "public"
  vulnerability_alerts   = true
}

data github_branch payback_master {
  provider   = github.old
  repository = "payback"
  branch     = "master"
}

resource github_branch_default payback {
  provider   = github.old
  repository = github_repository.payback.name
  branch     = data.github_branch.payback_master.branch
}


### textes-donnees-personnelles

resource github_repository textes_donnees_personnelles {
  provider               = github.old
  archived               = false
  delete_branch_on_merge = true
  description            = "Textes données personnelles SiMDE"
  has_downloads          = true
  has_issues             = true
  has_projects           = true
  has_wiki               = true
  name                   = "textes-donnees-personnelles"
  visibility             = "public"
  vulnerability_alerts   = true
}

data github_branch textes_donnees_personnelles_master {
  provider   = github.old
  repository = "textes-donnees-personnelles"
  branch     = "master"
}

resource github_branch_default textes_donnees_personnelles {
  provider   = github.old
  repository = github_repository.textes_donnees_personnelles.name
  branch     = data.github_branch.textes_donnees_personnelles_master.branch
}
