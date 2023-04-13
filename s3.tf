terraform {
  required_version = "~> 1.3" # which means any version equal & above 0.14 like 0.15, 0.16 etc and < 1.xx
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {

  region  = "ap-south-1"
  profile = "default"

}

resource "aws_s3_bucket" "this_bucket" {
  bucket = "demo-bucket-ddd-pro-ragu007"
}

resource "aws_s3_object" "object" {
  bucket = aws_s3_bucket.this_bucket.id
  key    = "demo/directory01/"
}