terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "eu-west-1"
  profile = "simple-terraform-aws-instance"
}

resource "aws_instance" "app_server" {
  ami           = "ami-04bd4a6a67aa8e86e"
  instance_type = "t2.micro"

  tags = {
    Name = "Eoin's Simple Server Instance"
  }
}
