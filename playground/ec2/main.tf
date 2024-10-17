# Create an EC2 instance
resource "aws_instance" "prod_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name       = var.keypair

  tags = {
    Name = var.ec2_name_tag
  }
}
