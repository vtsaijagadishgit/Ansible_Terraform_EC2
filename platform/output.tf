output "CDAAS1_public_ip" {
  value = module.EC2.CDAAS.public_ip[0]
}

output "CDAAS2_public_ip" {
  value = module.EC2.CDAAS.public_ip[1]
}
