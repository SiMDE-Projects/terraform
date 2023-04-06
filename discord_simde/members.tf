module "cesar_richard" {
  source    = "./member"
  api_token = var.api_token
  server_id = discord_server.server.id
  user_id   = "463652129878573056"
  roles     = {
    (discord_role.admin.id)  = true
    (discord_role.payutc.id) = true
  }
}

module "noe_amiot" {
  source    = "./member"
  api_token = var.api_token
  server_id = discord_server.server.id
  user_id   = "301424363624857600"
  roles     = {
    (discord_role.admin.id)  = true
    (discord_role.payutc.id) = true
  }
}

module "victor_ronfaut" {
  source    = "./member"
  api_token = var.api_token
  server_id = discord_server.server.id
  user_id   = "166621029412765696"
  roles     = {
    (discord_role.payutc.id) = true
  }
}

module "maxime_vaillant" {
  source    = "./member"
  api_token = var.api_token
  server_id = discord_server.server.id
  user_id   = "611205176493342752"
  roles     = {
    (discord_role.member.id)  = true
    (discord_role.payutc.id)  = true
  }
}


module "anton42" {
  source    = "./member"
  api_token = var.api_token
  server_id = discord_server.server.id
  user_id   = "301703000508989440"
  roles     = {
    (discord_role.member.id)  = true
  }
}

module "remy_huet" {
  source    = "./member"
  api_token = var.api_token
  server_id = discord_server.server.id
  user_id   = "327723660259360768"
  roles     = {
    (discord_role.member.id) = true
    (discord_role.treso.id)  = true
    (discord_role.payutc.id) = true
  }
}

module "matthieu_decaux" {
  source    = "./member"
  api_token = var.api_token
  server_id = discord_server.server.id
  user_id   = "772064855636836402"
  roles     = {
    (discord_role.member.id) = true
    (discord_role.treso.id)  = true
  }
}

module "armand_ribault" {
  source    = "./member"
  api_token = var.api_token
  server_id = discord_server.server.id
  user_id   = "418537351858487297"
  roles     = {
    (discord_role.member.id) = true
    (discord_role.uvweb.id)  = true
  }
}

module "alexandre_brasseur" {
  source    = "./member"
  api_token = var.api_token
  server_id = discord_server.server.id
  user_id   = "757649562813857965"
  roles     = {
    (discord_role.member.id) = true
  }
}

module "romain_maliachauguste" {
  source    = "./member"
  api_token = var.api_token
  server_id = discord_server.server.id
  user_id   = "753881213810507777"
  roles     = {
    (discord_role.member.id)   = true
    (discord_role.etuville.id) = true
    (discord_role.payutc.id)   = true
    (discord_role.portail.id)  = true
    (discord_role.sparkle.id)  = true
  }
}

module "pierre_adorni" {
  source    = "./member"
  api_token = var.api_token
  server_id = discord_server.server.id
  user_id   = "322379809776861185"
  roles     = {
    (discord_role.treso.id)    = true
  }
}

module "thomas_delplanque" {
  source    = "./member"
  api_token = var.api_token
  server_id = discord_server.server.id
  user_id   = "324634860406964225"
  roles     = {
    (discord_role.integ.id) = true #Team info integ 21
  }
}

module "mathias_deroubaix" {
  source    = "./member"
  api_token = var.api_token
  server_id = discord_server.server.id
  user_id   = "750764518770212975"
  roles     = {
    (discord_role.member.id) = true
    (discord_role.uvweb.id)  = true
  }
}

module "pascal_quach" {
  source    = "./member"
  api_token = var.api_token
  server_id = discord_server.server.id
  user_id   = "239495459389964289"
  roles     = {
    (discord_role.member.id) = true
  }
}

module "neil" {
  source    = "./member"
  api_token = var.api_token
  server_id = discord_server.server.id
  user_id   = "407211719400882176"
  roles     = {
    (discord_role.curieux.id) = true
  }
}

module "mael_belval" {
  source    = "./member"
  api_token = var.api_token
  server_id = discord_server.server.id
  user_id   = "218687552004161536"
  roles     = {
    (discord_role.curieux.id) = true
    (discord_role.treso.id)   = true
    (discord_role.sparkle.id) = true
    (discord_role.pumpkin.id) = true
  }
}

module "romain_leclere" {
  source    = "./member"
  api_token = var.api_token
  server_id = discord_server.server.id
  user_id   = "326477351665926145"
  roles     = {
    (discord_role.curieux.id) = true
  }
}

module "arthur_wacquez" {
  source    = "./member"
  api_token = var.api_token
  server_id = discord_server.server.id
  user_id   = "223159129072599050"
  roles     = {
    (discord_role.curieux.id)   = true
    (discord_role.emploidut.id) = true
    (discord_role.sparkle.id)  = true
  }
}

module "victor_tondolo" {
  source    = "./member"
  api_token = var.api_token
  server_id = discord_server.server.id
  user_id   = "699012818426527825"
  roles     = {
    (discord_role.curieux.id)   = true
    (discord_role.emploidut.id) = true
  }
}

module "victor_moreliere" {
  source    = "./member"
  api_token = var.api_token
  server_id = discord_server.server.id
  user_id   = "205355406011138048"
  roles     = {
    (discord_role.curieux.id)  = true
  }
}

module "theo_chazeaud" {
  source    = "./member"
  api_token = var.api_token
  server_id = discord_server.server.id
  user_id   = "776179622734856263"
  roles     = {
    (discord_role.member.id) = true
    (discord_role.payutc.id) = true
  }
}

module "nasser_chaouchi" {
  source    = "./member"
  api_token = var.api_token
  server_id = discord_server.server.id
  user_id   = "243412317214212126"
  roles     = {
    (discord_role.payutc.id) = true #Team payutc A22
  }
}

module "thibaud_duhautbout" {
  source    = "./member"
  api_token = var.api_token
  server_id = discord_server.server.id
  user_id   = "428253404645556226"
  roles     = {
    (discord_role.treso.id) = true
  }
}

module "jules_boulet" {
  source    = "./member"
  api_token = var.api_token
  server_id = discord_server.server.id
  user_id   = "273849879489544193"
  roles     = {
    (discord_role.member.id) = true
    (discord_role.payutc.id) = true
  }
}

module "paco_pompeani" {
  source    = "./member"
  api_token = var.api_token
  server_id = discord_server.server.id
  user_id   = "692765795788521532"
  roles     = {
    (discord_role.sparkle.id)  = true
    (discord_role.member.id) = true
    (discord_role.portail.id)  = true
  }
}

module "leopold_chappuis" {
  source    = "./member"
  api_token = var.api_token
  server_id = discord_server.server.id
  user_id   = "359038397265870848"
  roles     = {
    (discord_role.gesasso.id) = true
    (discord_role.payutc.id) = true
    (discord_role.admin.id) = true
  }
}

module "guillaume_theunissen" {
  source    = "./member"
  api_token = var.api_token
  server_id = discord_server.server.id
  user_id   = "321975642684129293"
  roles     = {
    (discord_role.member.id)  = true
    (discord_role.gesasso.id) = true
  }
}

module "loic_jumel" {
  source    = "./member"
  api_token = var.api_token
  server_id = discord_server.server.id
  user_id   = "352103192533794826"
  roles     = {
    (discord_role.admin.id) = true
  }
}

module "armand_saint_marc" {
  source    = "./member"
  api_token = var.api_token
  server_id = discord_server.server.id
  user_id   = "812342180600741889"
  roles     = {
    (discord_role.integ.id) = true # Integ A22
  }
}

module "marie_davenne" {
  source    = "./member"
  api_token = var.api_token
  server_id = discord_server.server.id
  user_id   = "427164953968115722"
  roles     = {
    (discord_role.treso.id)    = true
  }
}

module "simon_vital" {
  source    = "./member"
  api_token = var.api_token
  server_id = discord_server.server.id
  user_id   = "688848083714703414"
  roles     = {
    (discord_role.uvweb.id)    = true
  }
}

module "charles_bricout" {
  source    = "./member"
  api_token = var.api_token
  server_id = discord_server.server.id
  user_id   = "468419552640761866"
  roles     = {
    (discord_role.curieux.id)  = true
  }
}

module "ambroise_thibault" {
  source    = "./member"
  api_token = var.api_token
  server_id = discord_server.server.id
  user_id   = 689105176778637328
  roles     = {
    (discord_role.sparkle.id)  = true
  }
}

module "nicolas_scheidler" {
  source    = "./member"
  api_token = var.api_token
  server_id = discord_server.server.id
  user_id   = 688841855848153142
  roles     = {
    (discord_role.member.id) = true
    (discord_role.sparkle.id)  = true # P22
    (discord_role.etuville.id) = true
  }
}

module "antoine_gajan" {
  source    = "./member"
  api_token = var.api_token
  server_id = discord_server.server.id
  user_id   = 341190261575254020
  roles     = {
    (discord_role.sparkle.id)  = true # P22
  }
}

module "leo_mullier" {
  source    = "./member"
  api_token = var.api_token
  server_id = discord_server.server.id
  user_id   = "691966765219053678"
  roles     = {
    (discord_role.member.id)   = true
    (discord_role.uvweb.id)    = true
  }
}

module "alexia_rolland" {
  source    = "./member"
  api_token = var.api_token
  server_id = discord_server.server.id
  user_id   = "689494793834725441"
  roles     = {
    (discord_role.pacha_com.id)    = true
  }
}

module "Lysandre" {
  source    = "./member"
  api_token = var.api_token
  server_id = discord_server.server.id
  user_id   = "691808947912310804"
  roles     = {
    (discord_role.payutc.id) = true #tim payutc A22
    (discord_role.curieux.id) = true
    (discord_role.woolly.id) = true
  }
}

module "tom_jumel" {
  source    = "./member"
  api_token = var.api_token
  server_id = discord_server.server.id
  user_id   = "493120272631595008"
  roles     = {
    (discord_role.curieux.id) = true
    (discord_role.gesasso.id) = true
    (discord_role.integfev.id) = true #resp info A22
    (discord_role.bde.id) = true
  }
}

module "lucas_doublet" {
  source    = "./member"
  api_token = var.api_token
  server_id = discord_server.server.id
  user_id   = "231818542377467904"
  roles     = {
    (discord_role.curieux.id) = true
  }
}

module "alexandre_eberhardt" {
  source    = "./member"
  api_token = var.api_token
  server_id = discord_server.server.id
  user_id   = "386849408316211200"
  roles     = {
    (discord_role.payutc.id) = true
    (discord_role.woolly.id) = true
    (discord_role.pumpkin.id) = true
  }

}

module "maceo_anger" {
  source    = "./member"
  api_token = var.api_token
  server_id = discord_server.server.id
  user_id   = "290047614693408768"
  roles     = {
    (discord_role.pumpkin.id) = true
    (discord_role.uvweb.id)    = true
  }

}

module "alexandru_ghitu" {
  source    = "./member"
  api_token = var.api_token
  server_id = discord_server.server.id
  user_id   = "511964755305562127"
  roles     = {
    (discord_role.admin.id)     = true
    (discord_role.payutc.id) = true
  }

}

module "paul_wacquet" {
  source    = "./member"
  api_token = var.api_token
  server_id = discord_server.server.id
  user_id   = "340547318824828929"
  roles     = {
      (discord_role.member.id) = true
      (discord_role.curieux.id) = true
  }

}

module "louis_berges" {
  source    = "./member"
  api_token = var.api_token
  server_id = discord_server.server.id
  user_id   = "688830477582336001"
  roles     = {
      (discord_role.member.id) = true
      (discord_role.curieux.id) = true
      (discord_role.uvweb.id) = true
      (discord_role.polar.id) = true
  }

}

module "ilana_cahingt" {
  source    = "./member"
  api_token = var.api_token
  server_id = discord_server.server.id
  user_id   = "802461596202958858"
  roles     = {
      (discord_role.member.id) = true
      (discord_role.curieux.id) = true
      (discord_role.payutc.id) = true
  }
}
