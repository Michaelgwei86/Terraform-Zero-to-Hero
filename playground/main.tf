
module "prod_vpc" {
  source = "./vpc"
 cidr_block = "10.0.0.0/16"
 vpc_name = "prod-vpc"
}


module "prod_s3" {
  source = "./s3"
  bucket_name  = "prod91uniquejjtech2024bucket"
  bucket_tag = "dev"
}



