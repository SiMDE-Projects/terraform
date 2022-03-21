module "flairsou" {
  source   = "./database"
  username = "flairsou"
  host     = "%"
}

module "pmde" {
  source   = "./database"
  username = "pmde"
}
