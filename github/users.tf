module "cesar-richard" {
  source   = "./users"
  username = "cesar-richard"
  role     = "admin"
  teams = {
    "jeffrey" = {
      team = github_team.jeffrey.id,
      role = "maintainer"
    },
    "simde" = {
      team = github_team.simde.id,
      role = "maintainer"
    }
  }
}

module "maxime-vaillant" {
  source   = "./users"
  username = "maxime-vaillant"
  teams = {
    "jeffrey" = {
      team = github_team.jeffrey.id,
      role = "member"
    }
  }
}

module victor_moreliere {
  source   = "./users"
  username = "GalliusJulius"
}

module "anto2oo" {
  source   = "./users"
  username = "anto2oo"
  teams = {
    "jeffrey" = {
      team = github_team.jeffrey.id,
      role = "member"
    }
  }
}

module "noeamiot" {
  source   = "./users"
  username = "noeamiot"
  role     = "admin"
  teams = {
    "jeffrey" = {
      team = github_team.jeffrey.id,
      role = "member"
    },
    "simde" = {
      team = github_team.simde.id,
      role = "maintainer"
    }
  }
}

module "huetremy" {
  source   = "./users"
  username = "huetremy"
  teams = {
    "flairsou" = {
      team = github_team.flairsou.id,
      role = "maintainer"
    }
  }
}

module "matthieudecaux" {
  source   = "./users"
  username = "matthieudecaux"
  teams = {
    "flairsou" = {
      team = github_team.flairsou.id,
      role = "member"
    }
  }
}

module "romain_maliachauguste" {
  source   = "./users"
  username = "R0one"
}

###############################
###   ORIGINAL ORGANIZATION ###
###############################

module "old_aarrtthhuurr" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "aarrtthhuurr"
  teams = {
    "payutc" = {
      team = github_team.payutc.id,
      role = "member"
    }
    "application_utcbde" = {
      team = github_team.application_utcbde.id,
      role = "member"
    }
  }
}

module "old_abrasseu" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "abrasseu"
  teams = {
    "payutc" = {
      team = github_team.payutc.id,
      role = "member"
    }
    "woolly" = {
      team = github_team.woolly.id,
      role = "member"
    }
  }
}

module "old_acharann" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "acharann"
  teams = {
    "application_utcbde" = {
      team = github_team.application_utcbde.id,
      role = "member"
    }
  }
}

module "old_artemisart" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "artemisart"
  teams = {
    "portail" = {
      team = github_team.portail.id,
      role = "member"
    }
  }
}

module "old_BaguetteEater" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "BaguetteEater"
  teams = {
    "payutc" = {
      team = github_team.payutc.id,
      role = "member"
    }
  }
}

module "old_bonnetst" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "bonnetst"
}

module "old_Cathaiste" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "Cathaiste"
  teams = {
    "woolly" = {
      team = github_team.woolly.id,
      role = "member"
    }
    "portail" = {
      team = github_team.portail.id,
      role = "member"
    }
    "locky" = {
      team = github_team.locky.id,
      role = "member"
    }
  }
}

module "old_cesar-richard" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "cesar-richard"
  role     = "admin"
  teams = {
    "payutc" = {
      team = github_team.payutc.id,
      role = "maintainer"
    }
    "locky" = {
      team = github_team.locky.id,
      role = "maintainer"
    }
    "gesasso" = {
      team = github_team.gesasso.id,
      role = "maintainer"
    }
  }
}

module "old_courentin" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "courentin"
  teams = {
    "planner" = {
      team = github_team.planner.id,
      role = "member"
    }
  }
}

module "old_danousna" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "danousna"
  teams = {
    "portail" = {
      team = github_team.portail.id,
      role = "member"
    }
  }
}

module "old_Eliaccess" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "Eliaccess"
}

module "old_jpennors" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "jpennors"
  teams = {
    "woolly" = {
      team = github_team.woolly.id,
      role = "member"
    }
    "portail" = {
      team = github_team.portail.id,
      role = "member"
    }
  }
}

module "old_jsmrcaga" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "jsmrcaga"
}

module "old_jumelloic" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "jumelloic"
  teams = {
    "gesasso" = {
      team = github_team.gesasso.id,
      role = "member"
    }
  }
}

module "old_lafondoc" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "lafondoc"
  teams = {
    "payutc" = {
      team = github_team.payutc.id,
      role = "member"
    }
  }
}

module "old_lvaroqui" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "lvaroqui"
  teams = {
    "woolly" = {
      team = github_team.woolly.id,
      role = "member"
    }
    "portail" = {
      team = github_team.portail.id,
      role = "member"
    }
  }
}

module "old_MercierCorentin" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "MercierCorentin"
  teams = {
    "portail" = {
      team = github_team.portail.id,
      role = "member"
    }
    "payutc" = {
      team = github_team.payutc.id,
      role = "member"
    }
    "cloud" = {
      team = github_team.cloud.id,
      role = "member"
    }
  }
}

module "old_mglorion" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "mglorion"
  teams = {
    "portail" = {
      team = github_team.portail.id,
      role = "member"
    }
  }
}

module "old_NastuzziSamy" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "NastuzziSamy"
  teams = {
    "woolly" = {
      team = github_team.woolly.id,
      role = "member"
    }
    "portail" = {
      team = github_team.portail.id,
      role = "member"
    }
    "planner" = {
      team = github_team.planner.id,
      role = "member"
    }
    "payutc" = {
      team = github_team.payutc.id,
      role = "member"
    }
    "locky" = {
      team = github_team.locky.id,
      role = "member"
    }
    "gesasso" = {
      team = github_team.gesasso.id,
      role = "member"
    }
    "covoit_utc" = {
      team = github_team.covoit_utc.id,
      role = "member"
    }
    "cloud" = {
      team = github_team.cloud.id,
      role = "member"
    }
    "application_utcbde" = {
      team = github_team.application_utcbde.id,
      role = "member"
    }
  }
}

module "old_noeamiot" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "noeamiot"
  role     = "admin"
  teams = {
    "portail" = {
      team = github_team.portail.id,
      role = "maintainer"
    }
  }
}

module "old_obledaym" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "obledaym"
  teams = {
    "portail" = {
      team = github_team.portail.id,
      role = "member"
    }
    "payutc" = {
      team = github_team.payutc.id,
      role = "member"
    }
  }
}

module "old_Pangoraw" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "Pangoraw"
  teams = {
    "woolly" = {
      team = github_team.woolly.id,
      role = "member"
    }
  }
}

module "old_picardthibault" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "picardthibault"
  teams = {
    "application_utcbde" = {
      team = github_team.application_utcbde.id,
      role = "member"
    }
  }
}

module "old_pierrickdes59" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "pierrickdes59"
  teams = {
    "payutc" = {
      team = github_team.payutc.id,
      role = "member"
    }
  }
}

module "old_pineaulo" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "pineaulo"
  teams = {
    "application_utcbde" = {
      team = github_team.application_utcbde.id,
      role = "member"
    }
  }
}

module "old_R0one" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "R0one"
  teams = {
    "portail" = {
      team = github_team.portail.id,
      role = "member"
    }
    "application_utcbde" = {
      team = github_team.application_utcbde.id,
      role = "member"
    }
  }
}

module "old_RevenMyst" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "RevenMyst"
  teams = {
    "portail" = {
      team = github_team.portail.id,
      role = "member"
    }
  }
}

module "old_rurod" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "rurod"
}

module "old_yElSaadany" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "yElSaadany"
  teams = {
    "covoit_utc" = {
      team = github_team.covoit_utc.id,
      role = "member"
    }
  }
}

module arthur_wacquez {
  source   = "./users"
  username = "0uTl0w24"
  teams = {
    "emploidut" = {
      team = github_team.emploidut.id
      role = "member"
    }
  }
}

module victor_tondolo {
  source   = "./users"
  username = "victor-tndl"
  teams = {
    "emploidut" = {
      team = github_team.emploidut.id
      role = "member"
    }
  }
}
