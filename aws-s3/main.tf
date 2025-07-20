terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.0.0-beta3"
    }
    random = {
      source = "hashicorp/random"
      version = "3.7.2"
    }
  }
}

provider "aws" {
  # Configuration options
  region = var.region
}

# Giving aws bucket unique name .. so instead of manually doing hit and trial method use random provider.
resource "aws_s3_bucket" "demo-bucket" {
#   bucket = "demo-bucket-acd323"
    bucket = "demo-bucket-${random_id.rand_id.hex}"
}


# To upload into S3
resource "aws_s3_object" "bucket-data" {
    bucket = aws_s3_bucket.demo-bucket.bucket
    source = "./myfile.txt"
    key = "mydata.txt"
}


# using random provider
resource "random_id" "rand_id" {
  byte_length = 8
}