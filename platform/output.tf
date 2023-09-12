output "CDAAS1_public_ip" {
  value = module.EC2.CDAAS[0].public_ip
}

output "CDAAS2_public_ip" {
  value = module.EC2.CDAAS[1].public_ip
}
