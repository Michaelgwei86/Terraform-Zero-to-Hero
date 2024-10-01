provider "aws" {
  region = "us-west-2"
  profile = "testing-env"
}

resource "aws_instance" "prod-server" {
  ami           = "ami-08d8ac128e0a1b91c"
  instance_type = "t2.micro"
  tags = {
    Name = "prod_instance"
  }
}

resource "aws_instance" "dev-server" {
  ami           = "ami-08d8ac128e0a1b91c"
  instance_type = "t2.medium"
  tags = {
    Name = "prod_instance"
  }
}

resource "aws_instance" "stage-server" {
  ami           = "ami-08d8ac128e0a1b91c"
  instance_type = "t2.micro"
  tags = {
    Name = "prod_instance"
  }
}