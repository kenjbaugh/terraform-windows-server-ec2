terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-west-2"
}

resource "aws_instance" "DC01" {
  ami           = "ami-01977bc15980f9223"
  instance_type = "t2.micro"

  tags = {
    Name    = "Windows Server 2019 EC2 Instance"
    Purpose = "Windows Domain Controller"
  }
}
