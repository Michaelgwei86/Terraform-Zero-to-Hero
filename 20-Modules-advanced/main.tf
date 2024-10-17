provider "aws" {
  region = var.region
}


module "mytest" {
  source = "./modules/ec2"

  ami_id        = var.ami_id
  ec2_name      = var.ec2_name
  instance_type = var.instance_type
}

/*
module "mys3" {
  source      = "../modules/s3"
  bucket_name = var.bucket_name
}
*/

