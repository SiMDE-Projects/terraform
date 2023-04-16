### RespInfo
resource "discord_channel_permission" "respinfo_general" {
  channel_id   = module.general.category.id
  type         = "role"
  overwrite_id = local.roles.respinfo.id
  allow        = local.permissions.allow.allow_bits
  deny         = local.permissions.allow.deny_bits
}

resource "discord_channel_permission" "respinfo_notifications" {
  channel_id   = discord_text_channel.notifications.id
  type         = "role"
  overwrite_id = local.roles.respinfo.id
  allow        = local.permissions.readonly.allow_bits
  deny         = local.permissions.readonly.deny_bits
}

### Honorable Curieux
resource "discord_channel_permission" "curieux_general" {
  channel_id   = module.general.category.id
  type         = "role"
  overwrite_id = local.roles.curieux.id
  allow        = local.permissions.allow.allow_bits
  deny         = local.permissions.allow.deny_bits
}

resource "discord_channel_permission" "curieux_notifications" {
  channel_id   = discord_text_channel.notifications.id
  type         = "role"
  overwrite_id = local.roles.curieux.id
  allow        = local.permissions.readonly.allow_bits
  deny         = local.permissions.readonly.deny_bits
}

resource "discord_channel_permission" "curieux_spam" {
  channel_id   = discord_text_channel.spam.id
  type         = "role"
  overwrite_id = local.roles.curieux.id
  allow        = local.permissions.allow.allow_bits
  deny         = local.permissions.allow.deny_bits
}

### Payutc
resource "discord_channel_permission" "payutc_general" {
  channel_id   = module.general.category.id
  type         = "role"
  overwrite_id = local.roles.payutc.id
  allow        = local.permissions.allow.allow_bits
  deny         = local.permissions.allow.deny_bits
}

resource "discord_channel_permission" "payutc_payutc" {
  channel_id   = module.private-payutc.category.id
  type         = "role"
  overwrite_id = local.roles.payutc.id
  allow        = local.permissions.allow.allow_bits
  deny         = local.permissions.allow.deny_bits
}

resource "discord_channel_permission" "payutc_notifications" {
  channel_id   = discord_text_channel.notifications.id
  type         = "role"
  overwrite_id = local.roles.payutc.id
  allow        = local.permissions.readonly.allow_bits
  deny         = local.permissions.readonly.deny_bits
}


### Woolly
resource "discord_channel_permission" "woolly_general" {
  channel_id   = module.general.category.id
  type         = "role"
  overwrite_id = local.roles.woolly.id
  allow        = local.permissions.allow.allow_bits
  deny         = local.permissions.allow.deny_bits
}

resource "discord_channel_permission" "woolly_woolly" {
  channel_id   = module.private-woolly.category.id
  type         = "role"
  overwrite_id = local.roles.woolly.id
  allow        = local.permissions.allow.allow_bits
  deny         = local.permissions.allow.deny_bits
}

resource "discord_channel_permission" "woolly_notifications" {
  channel_id   = discord_text_channel.notifications.id
  type         = "role"
  overwrite_id = local.roles.woolly.id
  allow        = local.permissions.readonly.allow_bits
  deny         = local.permissions.readonly.deny_bits
}

### Integ
resource "discord_channel_permission" "integ_general" {
  channel_id   = module.general.category.id
  type         = "role"
  overwrite_id = local.roles.integ.id
  allow        = local.permissions.allow.allow_bits
  deny         = local.permissions.allow.deny_bits
}

resource "discord_channel_permission" "integ_integ" {
  channel_id   = module.private-integ.category.id
  type         = "role"
  overwrite_id = local.roles.integ.id
  allow        = local.permissions.allow.allow_bits
  deny         = local.permissions.allow.deny_bits
}


resource "discord_channel_permission" "integ_notifications" {
  channel_id   = discord_text_channel.notifications.id
  type         = "role"
  overwrite_id = local.roles.integ.id
  allow        = local.permissions.readonly.allow_bits
  deny         = local.permissions.readonly.deny_bits
}


### Pumpkin
resource "discord_channel_permission" "pumpkin_general" {
  channel_id   = module.general.category.id
  type         = "role"
  overwrite_id = local.roles.pumpkin.id
  allow        = local.permissions.allow.allow_bits
  deny         = local.permissions.allow.deny_bits
}

resource "discord_channel_permission" "pumpkin_pumpkin" {
  channel_id   = module.private-pumpkin.category.id
  type         = "role"
  overwrite_id = local.roles.pumpkin.id
  allow        = local.permissions.allow.allow_bits
  deny         = local.permissions.allow.deny_bits
}

resource "discord_channel_permission" "pumpkin_notifications" {
  channel_id   = discord_text_channel.notifications.id
  type         = "role"
  overwrite_id = local.roles.pumpkin.id
  allow        = local.permissions.readonly.allow_bits
  deny         = local.permissions.readonly.deny_bits
}

###Polar
resource "discord_channel_permission" "polar_general" {
  channel_id   = module.general.category.id
  type         = "role"
  overwrite_id = local.roles.polar.id
  allow        = local.permissions.allow.allow_bits
  deny         = local.permissions.allow.deny_bits
}

resource "discord_channel_permission" "polar_notifications" {
  channel_id   = discord_text_channel.notifications.id
  type         = "role"
  overwrite_id = local.roles.polar.id
  allow        = local.permissions.readonly.allow_bits
  deny         = local.permissions.readonly.deny_bits
}

resource "discord_channel_permission" "polar_spam" {
  channel_id   = discord_text_channel.spam.id
  type         = "role"
  overwrite_id = local.roles.polar.id
  allow        = local.permissions.allow.allow_bits
  deny         = local.permissions.allow.deny_bits
}

###AssoCalendar
resource "discord_channel_permission" "AssoCalendar_general" {
  channel_id   = module.general.category.id
  type         = "role"
  overwrite_id = local.roles.AssoCalendar.id
  allow        = local.permissions.allow.allow_bits
  deny         = local.permissions.allow.deny_bits
}

resource "discord_channel_permission" "AssoCalendar_notifications" {
  channel_id   = discord_text_channel.notifications.id
  type         = "role"
  overwrite_id = local.roles.AssoCalendar.id
  allow        = local.permissions.readonly.allow_bits
  deny         = local.permissions.readonly.deny_bits
}

resource "discord_channel_permission" "AssoCalendar_spam" {
  channel_id   = discord_text_channel.spam.id
  type         = "role"
  overwrite_id = local.roles.AssoCalendar.id
  allow        = local.permissions.allow.allow_bits
  deny         = local.permissions.allow.deny_bits
}

### BDE
resource "discord_channel_permission" "bde_general" {
  channel_id   = module.general.category.id
  type         = "role"
  overwrite_id = local.roles.bde.id
  allow        = local.permissions.allow.allow_bits
  deny         = local.permissions.allow.deny_bits
}

resource "discord_channel_permission" "bde_bde" {
  channel_id   = module.private-bde.category.id
  type         = "role"
  overwrite_id = local.roles.bde.id
  allow        = local.permissions.allow.allow_bits
  deny         = local.permissions.allow.deny_bits
}

resource "discord_channel_permission" "bde_notifications" {
  channel_id   = discord_text_channel.notifications.id
  type         = "role"
  overwrite_id = local.roles.bde.id
  allow        = local.permissions.readonly.allow_bits
  deny         = local.permissions.readonly.deny_bits
}

### Treso
resource "discord_channel_permission" "treso_general" {
  channel_id   = module.general.category.id
  type         = "role"
  overwrite_id = local.roles.treso.id
  allow        = local.permissions.allow.allow_bits
  deny         = local.permissions.allow.deny_bits
}

resource "discord_channel_permission" "treso_treso" {
  channel_id   = module.private-treso.category.id
  type         = "role"
  overwrite_id = local.roles.treso.id
  allow        = local.permissions.allow.allow_bits
  deny         = local.permissions.allow.deny_bits
}

resource "discord_channel_permission" "treso_notifications" {
  channel_id   = discord_text_channel.notifications.id
  type         = "role"
  overwrite_id = local.roles.treso.id
  allow        = local.permissions.readonly.allow_bits
  deny         = local.permissions.readonly.deny_bits
}

### Gesasso
resource "discord_channel_permission" "gesasso_general" {
  channel_id   = module.general.category.id
  type         = "role"
  overwrite_id = local.roles.gesasso.id
  allow        = local.permissions.allow.allow_bits
  deny         = local.permissions.allow.deny_bits
}

resource "discord_channel_permission" "gesasso_gesasso" {
  channel_id   = module.private-gesasso.category.id
  type         = "role"
  overwrite_id = local.roles.gesasso.id
  allow        = local.permissions.allow.allow_bits
  deny         = local.permissions.allow.deny_bits
}

resource "discord_channel_permission" "gesasso_notifications" {
  channel_id   = discord_text_channel.notifications.id
  type         = "role"
  overwrite_id = local.roles.gesasso.id
  allow        = local.permissions.readonly.allow_bits
  deny         = local.permissions.readonly.deny_bits
}

resource "discord_channel_permission" "gesasso_spam" {
  channel_id   = discord_text_channel.spam.id
  type         = "role"
  overwrite_id = local.roles.gesasso.id
  allow        = local.permissions.allow.allow_bits
  deny         = local.permissions.allow.deny_bits
}

### IntegFev
resource "discord_channel_permission" "integfev_general" {
  channel_id   = module.general.category.id
  type         = "role"
  overwrite_id = local.roles.integfev.id
  allow        = local.permissions.allow.allow_bits
  deny         = local.permissions.allow.deny_bits
}

resource "discord_channel_permission" "integfev_integfev" {
  channel_id   = module.private-integfev.category.id
  type         = "role"
  overwrite_id = local.roles.integfev.id
  allow        = local.permissions.allow.allow_bits
  deny         = local.permissions.allow.deny_bits
}

resource "discord_channel_permission" "integfev_notifications" {
  channel_id   = discord_text_channel.notifications.id
  type         = "role"
  overwrite_id = local.roles.integfev.id
  allow        = local.permissions.readonly.allow_bits
  deny         = local.permissions.readonly.deny_bits
}

resource "discord_channel_permission" "integfev_spam" {
  channel_id   = discord_text_channel.spam.id
  type         = "role"
  overwrite_id = local.roles.integfev.id
  allow        = local.permissions.allow.allow_bits
  deny         = local.permissions.allow.deny_bits
}

### Sparkle
resource "discord_channel_permission" "sparkle_general" {
  channel_id   = module.general.category.id
  type         = "role"
  overwrite_id = local.roles.sparkle.id
  allow        = local.permissions.allow.allow_bits
  deny         = local.permissions.allow.deny_bits
}

resource "discord_channel_permission" "sparkle_sparkle" {
  channel_id   = module.private-sparkle.category.id
  type         = "role"
  overwrite_id = local.roles.sparkle.id
  allow        = local.permissions.allow.allow_bits
  deny         = local.permissions.allow.deny_bits
}

resource "discord_channel_permission" "sparkle_notifications" {
  channel_id   = discord_text_channel.notifications.id
  type         = "role"
  overwrite_id = local.roles.sparkle.id
  allow        = local.permissions.readonly.allow_bits
  deny         = local.permissions.readonly.deny_bits
}

resource "discord_channel_permission" "sparkle_spam" {
  channel_id   = discord_text_channel.spam.id
  type         = "role"
  overwrite_id = local.roles.sparkle.id
  allow        = local.permissions.allow.allow_bits
  deny         = local.permissions.allow.deny_bits
}

### Pacha Com
resource "discord_channel_permission" "pacha_com_general" {
  channel_id   = module.general.category.id
  type         = "role"
  overwrite_id = local.roles.pacha_com.id
  allow        = local.permissions.allow.allow_bits
  deny         = local.permissions.allow.deny_bits
}

resource "discord_channel_permission" "pacha_com_pacha" {
  channel_id   = module.private-pacha.category.id
  type         = "role"
  overwrite_id = local.roles.pacha_com.id
  allow        = local.permissions.allow.allow_bits
  deny         = local.permissions.allow.deny_bits
}

resource "discord_channel_permission" "pacha_com_notifications" {
  channel_id   = discord_text_channel.notifications.id
  type         = "role"
  overwrite_id = local.roles.pacha_com.id
  allow        = local.permissions.readonly.allow_bits
  deny         = local.permissions.readonly.deny_bits
}

resource "discord_channel_permission" "pacha_com_spam" {
  channel_id   = discord_text_channel.spam.id
  type         = "role"
  overwrite_id = local.roles.pacha_com.id
  allow        = local.permissions.allow.allow_bits
  deny         = local.permissions.allow.deny_bits
}

### members

resource "discord_channel_permission" "member_notifications" {
  channel_id   = discord_text_channel.notifications.id
  type         = "role"
  overwrite_id = local.roles.member.id
  allow        = local.permissions.readonly.allow_bits
  deny         = local.permissions.readonly.deny_bits
}

resource "discord_channel_permission" "member_spam" {
  channel_id   = discord_text_channel.spam.id
  type         = "role"
  overwrite_id = local.roles.member.id
  allow        = local.permissions.allow.allow_bits
  deny         = local.permissions.allow.deny_bits
}

### everyone

resource "discord_channel_permission" "everyone_games" {
  channel_id   = discord_text_channel.games.id
  type         = "role"
  overwrite_id = local.roles.everyone.id
  allow        = local.permissions.member.allow_bits
  deny         = local.permissions.member.deny_bits
}

resource "discord_channel_permission" "everyone_questions_techniques" {
  channel_id   = discord_text_channel.questions-techniques.id
  type         = "role"
  overwrite_id = local.roles.everyone.id
  allow        = local.permissions.member.allow_bits
  deny         = local.permissions.member.deny_bits
}
