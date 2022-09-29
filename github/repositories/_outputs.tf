output "repositories" {
  value = {
    flairsou-api = github_repository.flairsou-api
    uvweb = github_repository.uvweb
    payutc_appli = github_repository.payutc_appli
  }
}

output "private_deploy_keys" {
  value = {
    flairsou-api = tls_private_key.flairsou_ssh_key.private_key_pem
    gesasso_mkultra = tls_private_key.gesasso_mkultra_ssh_key.private_key_pem
    gesasso_mkmail = tls_private_key.gesasso_mkmail_ssh_key.private_key_pem
  }
  sensitive = true
}
