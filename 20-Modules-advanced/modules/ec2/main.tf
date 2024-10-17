resource "aws_instance" "prod_server" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = var.ec2_name
  }
}