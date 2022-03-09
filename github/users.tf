module "cesar_richard" {
  source   = "./users"
  username = "cesar-richard"
  role     = "admin"
  teams    = {
    "jeffrey" = {
      team = github_team.jeffrey.id,
      role = "maintainer"
    },
    "simde" = {
      team = github_team.simde.id,
      role = "maintainer"
    },
    "gesasso" = {
      team = github_team.gesasso.id,
      role = "maintainer"
    }
    "sparkle" = {
      team = github_team.sparkle.id,
      role = "maintainer"
    }
  }
}

module "maxime_vaillant" {
  source   = "./users"
  username = "maxime-vaillant"
  teams    = {
    "jeffrey" = {
      team = github_team.jeffrey.id,
      role = "member"
    }
  }
}

module "anto2oo" {
  source   = "./users"
  username = "anto2oo"
  teams    = {
    "jeffrey" = {
      team = github_team.jeffrey.id,
      role = "member"
    }
  }
}

module "noe_amiot" {
  source   = "./users"
  username = "noeamiot"
  role     = "admin"
  teams    = {
    "jeffrey" = {
      team = github_team.jeffrey.id,
      role = "member"
    },
    "simde" = {
      team = github_team.simde.id,
      role = "maintainer"
    },
    "gesasso" = {
      team = github_team.gesasso.id,
      role = "maintainer"
    }
  }
}

module "remy_huet" {
  source   = "./users"
  username = "huetremy"
  teams    = {
    "flairsou" = {
      team = github_team.flairsou.id,
      role = "maintainer"
    }
  }
}

module "matthieu_decaux" {
  source   = "./users"
  username = "matthieudecaux"
  teams    = {
    "flairsou" = {
      team = github_team.flairsou.id,
      role = "member"
    }
  }
}

module "romain_maliachauguste" {
  source   = "./users"
  username = "R0one"
  teams    = {
    "sparkle" = {
      team = github_team.sparkle.id,
      role = "member"
    }
  }
}

module "thibaud_duhautbout" {
  source   = "./users"
  username = "tduhautb"
  teams    = {
    "flairsou" = {
      team = github_team.flairsou.id,
      role = "maintainer"
    }
  }
}

module "guillaume_theunissen" {
  source   = "./users"
  username = "theunissenguillaume"
  teams    = {
    "gesasso" = {
      team = github_team.gesasso.id,
      role = "member"
    }
  }
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
  teams    = {
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

module "old_alexandre_brasseur" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "abrasseu"
  teams    = {
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
  teams    = {
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
  teams    = {
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
  teams    = {
    "payutc" = {
      team = github_team.payutc.id,
      role = "member"
    }
  }
}

module "old_stephane_bonnet" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "bonnetst"
}

module "old_victor_ronfaut" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "Cathaiste"
  teams    = {
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

module "old_cesar_richard" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "cesar-richard"
  role     = "admin"
  teams    = {
    "payutc" = {
      team = github_team.payutc.id,
      role = "maintainer"
    }
    "locky" = {
      team = github_team.locky.id,
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
  teams    = {
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
  teams    = {
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
  teams    = {
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

module "old_loic_jumel" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "jumelloic"
}

module "old_colin_lafond" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "lafondoc"
  teams    = {
    "payutc" = {
      team = github_team.payutc.id,
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
  teams    = {
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
  teams    = {
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
  teams    = {
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
  teams    = {
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
  teams    = {
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
  teams    = {
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
  teams    = {
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
  teams    = {
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
  teams    = {
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
  teams    = {
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
  teams    = {
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
  teams    = {
    "covoit_utc" = {
      team = github_team.covoit_utc.id,
      role = "member"
    }
  }
}

module "arthur_wacquez" {
  source   = "./users"
  username = "0uTl0w24"
  teams    = {
    "emploidut" = {
      team = github_team.emploidut.id
      role = "member"
    }
  }
}

module "victor_tondolo" {
  source   = "./users"
  username = "victor-tndl"
  teams    = {
    "emploidut" = {
      team = github_team.emploidut.id
      role = "member"
    }
  }
}

module "pierre_adorni" {
  source   = "./users"
  username = "pierreadorni"
  teams    = {
    "flairsou" = {
      team = github_team.flairsou.id,
      role = "member"
    }
  }
}

module "mael_belval" {
  source   = "./users"
  username = "mael-belval"
  teams    = {
    "flairsou" = {
      team = github_team.flairsou.id,
      role = "member"
    }
    "sparkle" = {
      team = github_team.sparkle.id,
      role = "member"
    }
  }
}

module "marie_davenne" {
  source   = "./users"
  username = "maradav08"
  teams    = {
    "flairsou" = {
      team = github_team.flairsou.id,
      role = "member"
    }
  }
}

module "armand_ribault" {
  source   = "./users"
  username = "armribdev"
  teams    = {
    "uvweb" = {
      team = github_team.uvweb.id,
      role = "member"
    }
  }
}
