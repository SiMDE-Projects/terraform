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

//module "romanedauge" {
//  source   = "./users"
//  username = "romanedauge"
//  teams = {
//    "jeffrey" = {
//      team = github_team.jeffrey.id,
//      role = "member"
//    }
//  }
//}
