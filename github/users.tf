module "cesar_richard" {
  source   = "./users"
  username = "cesar-richard"
  role     = "admin"
  teams    = {
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
    "payutc" = {
      team = github_team.payutc.id,
      role = "maintainer"
    }
    "pumpkin" = {
      team = github_team.pumpkin.id,
      role = "maintainer"
    }
  }
}

module "noe_amiot" {
  source   = "./users"
  username = "noeamiot"
  role     = "admin"
  teams    = {
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
    },
    "cues_media_player" = {
      team = github_team.cues_media_player.id,
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
module "tom_jumel" {
  source = "./users"
  username = "TomJumel"
  role     = "admin"
  teams    = {
    "payutc" = {
      team = github_team.payutc.id,
      role = "member"
    }
  }
}

###############################
###   ORIGINAL ORGANIZATION ###
###############################

module "old_cesar_richard" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "cesar-richard"
  role     = "admin"
  teams    = {
    "locky" = {
      team = github_team.locky.id,
      role = "maintainer"
    }
  }
}

module "old_loic_jumel" {
  providers = {
    github = github.old
  }
  source   = "./users"
  username = "jumelloic"
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
    "pumpkin" = {
      team = github_team.pumpkin.id,
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
    "payutc" = {
      team = github_team.payutc.id,
      role = "member"
    }
  }
}

module "leopold_chappuis" {
  source   = "./users"
  username = "leochapp"
  role     = "admin"
  teams    = {
    "simde" = {
      team = github_team.simde.id,
      role = "member"
    },
    "uvweb" = {
      team = github_team.gesasso.id,
      role = "member"
    },
    "pumpkin" = {
      team = github_team.pumpkin.id,
      role = "maintainer"
    }
  }
}

module "nicolas_scheidler" {
  source = "./users"
  username = "nscheidler"
  teams    = {
    "sparkle" = {
      team = github_team.sparkle.id,
      role = "member"
    }
  }
}

module "paco_pompeani" {
  source = "./users"
  username = "aopom"
  teams    = {
    "sparkle" = {
      team = github_team.sparkle.id,
      role = "member"
    }
  }
}

module "tom_jumel" {
  source = "./users"
  username = "TomJumel"
  teams    = {
    "payutc" = {
      team = github_team.payutc.id,
      role = "member"
    }
  }
}

module "alexandre_eberhardt" {
  source = "./users"
  username = "alexandreeberhardt"
  role     = "admin"
  teams    = {
    "simde" = {
      team = github_team.simde.id,
      role = "member"
    }
  }
}
module "adrien_herve" {
  source = "./users"
  username = "adr4500"
  teams    = {
    "cues_media_player" = {
      team = github_team.cues_media_player.id,
      role = "maintainer"
    }
  }
}

module "dimitri_chaline" {
  source = "./users"
  username = "Dimitri-chln"
  teams    = {
    "cues_media_player" = {
      team = github_team.cues_media_player.id,
      role = "member"
    }
  }
}

module "joris_triart" {
  source = "./users"
  username = "jberdev1"
  teams    = {
    "cues_media_player" = {
      team = github_team.cues_media_player.id,
      role = "member"
    }
  }
}

module "nicolas_taupin" {
  source = "./users"
  username = "nicolas-tpn"
  teams    = {
    "cues_media_player" = {
      team = github_team.cues_media_player.id,
      role = "member"
    }
  }
}

module "gabriel_muhl" {
  source = "./users"
  username = "gabmiral"
  teams    = {
    "cues_media_player" = {
      team = github_team.cues_media_player.id,
      role = "member"
    }
  }
}
