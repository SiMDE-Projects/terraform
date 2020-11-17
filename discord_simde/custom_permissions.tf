resource discord_channel_permission payutc_general {
  channel_id   = module.general.category.id
  type         = "role"
  overwrite_id = local.roles.payutc.id
  allow        = local.permissions.allow.allow_bits
  deny         = local.permissions.allow.deny_bits
}

resource discord_channel_permission payutc_payutc {
  channel_id   = module.private-payutc.category.id
  type         = "role"
  overwrite_id = local.roles.payutc.id
  allow        = local.permissions.allow.allow_bits
  deny         = local.permissions.allow.deny_bits
}

resource discord_channel_permission treso_general {
  channel_id   = module.general.category.id
  type         = "role"
  overwrite_id = local.roles.treso.id
  allow        = local.permissions.allow.allow_bits
  deny         = local.permissions.allow.deny_bits
}

resource discord_channel_permission treso_treso {
  channel_id   = module.private-treso.category.id
  type         = "role"
  overwrite_id = local.roles.treso.id
  allow        = local.permissions.allow.allow_bits
  deny         = local.permissions.allow.deny_bits
}