terraform {
  backend "s3" {
    region  = "eu-west-3"
    bucket  = "terraform-remote-state-crichard"
    key     = "simde-internal.tfstate"
    encrypt = true
  }
}
