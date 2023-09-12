output "CDAAS1_public_ip" {
  value = module.EC2.instance_public_ips[0]
}

output "CDAAS2_public_ip" {
  value = module.EC2.instance_public_ips[1]
}
