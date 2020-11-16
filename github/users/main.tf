variable username {
  type = string
}

variable role {
  type    = string
  default = "member"
}

variable teams {
  default = {}
  type    = map
}

data github_user user {
  username = var.username
}

resource github_membership membership {
  username = var.username
  role     = var.role
}

resource github_team_membership membership {
  team_id  = each.value.team
  username = var.username
  role     = each.value.role
  for_each = var.teams
}