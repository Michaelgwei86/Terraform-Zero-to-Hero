output "instance_id" {
  value       = aws_instance.prod_instance.id
  description = "description"
}

output "instance_public_ip" {
  value       = aws_instance.prod_instance.public_ip
  description = "description"
}