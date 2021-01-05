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
}

module "old_abrasseu" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "abrasseu"
}

module "old_acharann" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "acharann"
}

module "old_artemisart" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "artemisart"
}

module "old_BaguetteEater" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "BaguetteEater"
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
}

module "old_cesar-richard" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "cesar-richard"
  role     = "admin"
}

module "old_courentin" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "courentin"
}

module "old_danousna" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "danousna"
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
}

module "old_lafondoc" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "lafondoc"
}

module "old_lvaroqui" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "lvaroqui"
}

module "old_MercierCorentin" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "MercierCorentin"
}

module "old_mglorion" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "mglorion"
}

module "old_NastuzziSamy" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "NastuzziSamy"
}

module "old_noeamiot" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "noeamiot"
  role     = "admin"
}

module "old_obledaym" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "obledaym"
}

module "old_Pangoraw" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "Pangoraw"
}

module "old_picardthibault" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "picardthibault"
}

module "old_pierrickdes59" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "pierrickdes59"
}

module "old_pineaulo" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "pineaulo"
}

module "old_R0one" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "R0one"
}

module "old_RevenMyst" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "RevenMyst"
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
}
