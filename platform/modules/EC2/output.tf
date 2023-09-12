output "CDAAS_instance_ids" {
  description = "List of instance IDs"
  value = aws_instance.CDAAS.*.id
}
