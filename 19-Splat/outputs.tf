output "publicip" {
  value = aws_instance.prod_instance[*].public_ip
}

output "publicip1" {
  value = aws_instance.prod_instance[0].public_ip
}