output "databases" {
  value     = [
    module.flairsou,
    module.pmde,
  ]
  sensitive = true
}
