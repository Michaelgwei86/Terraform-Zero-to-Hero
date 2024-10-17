output "publicip" {
  value = aws_instance.prod_server.public_ip
}

output "publicdns" {
  value = aws_instance.prod_server.public_dns
}

output "privateip" {
  value = aws_instance.prod_server.private_ip
}

output "privatedns" {
  value = aws_instance.prod_server.private_dns
}