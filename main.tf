provider "aws" {
  region = "eu-west-2" # London region
}
resource "aws_s3_bucket" "terraform-projects1" {
  bucket = "terraform-august-project"
}