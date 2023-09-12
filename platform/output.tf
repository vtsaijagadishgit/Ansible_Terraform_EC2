output "CDAAS_public_ip" {
  value = module.EC2.CDAAS[0].public_ip
  value = module.EC2.CDAAS[1].public_ip
}
