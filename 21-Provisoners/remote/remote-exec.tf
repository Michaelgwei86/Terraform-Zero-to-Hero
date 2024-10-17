#Below is the provider which helps in connecting with AWS Account
provider "aws" {
  region     = "us-west-2"
  profile = "testing-env"
}

resource "aws_instance" "test" {
  ami = "ami-0cea098ed2ac54925"
  instance_type = "t2.micro"
  tags = {
    Name="remote-exec-ec2"
  }

  key_name = "wawa-keypair"
  vpc_security_group_ids = ["sg-0d316ad44519e564c"]

  connection {
    type ="ssh"
    user = "ec2-user"
    private_key = file("./wawa-keypair.pem")
    host = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo amazon-linux-extras install nginx1",
      "systemctl start nginx",
      "systemctl status nginx"
    ]
  }
}