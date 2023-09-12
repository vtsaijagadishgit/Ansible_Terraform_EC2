output "CDAAS1_public_ip" {
  value = aws_instance.CDAAS[0].public_ip
}
output "CDAAS2_public_ip" {
  value = aws_instance.CDAAS[1].public_ip
}
