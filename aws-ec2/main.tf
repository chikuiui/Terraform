

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.0.0-beta3"
    }
  }
}

provider "aws" {
  # Configuration options
  # region = "eu-north-1"
  region = var.region
}

resource "aws_instance" "myserver" {
  ami = "ami-05fcfb9614772f051"  # <- amazon os and for ubuntu  ->  ami-042b4708b1d05f512
  instance_type = "t3.micro"

  tags = {
    Name = "SampleServer"
  }
}

