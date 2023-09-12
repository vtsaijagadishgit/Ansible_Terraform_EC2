output "CDAAS_public_ip" {
  value = aws_instance.CDAAS[0].public_ip
  value = aws_instance.CDAAS[1].public_ip
}
