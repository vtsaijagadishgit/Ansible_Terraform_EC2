output "CDAAS_public_ip" {
  value = aws_instance.CDAAS.*.public_ip
}
