# Setting up S3 bucket 
provider "aws" {
  region = "eu-west-2" # London region
}
resource "aws_s3_bucket" "terraform-projects1" {
  bucket = "terraform-projects1"
}

# Insert Bucket name here!
terraform {
  backend "s3" {
    bucket         = "terraform-projects1"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-west-2"
  }
}

# Insert Bucket name here!