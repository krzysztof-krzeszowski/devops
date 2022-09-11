terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  profile = "default"
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-05fa00d4c63e32376"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleEC2Instance"
  }
}
