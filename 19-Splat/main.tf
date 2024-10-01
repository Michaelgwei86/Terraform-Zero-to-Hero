#splat expressons allows us to get a list of all the attributes


provider "aws" {
  region     = "us-west-2"
}
resource "aws_iam_user" "lb" {
  name = "iamuser.${count.index}"
  count = 3
  path = "/system/"
}

output "arns" {
  value = aws_iam_user.lb[*].arn
}



/*
provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "prod_instance" {
  count         = 3
  ami           = "ami-08d8ac128e0a1b91c"
  instance_type = "t2.micro"
  tags = {
    Name = "prod-ec2"
  }
}
*/