provider "aws" {
    region = "ap-south-1"
    access_key = ""
    secret_key = ""

}

resource "aws_s3_bucket" "myvirus3" {
  bucket = "virunaikbucket-terraform-practice"
}