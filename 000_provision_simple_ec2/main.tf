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

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

locals {
  project_suffix = "test"
}

output "ec2_public_ip" {
    value = aws_instance.my_ec2.public_ip
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-05fa00d4c63e32376"
  instance_type = var.instance_type

  tags = {
    Name = "EC2_${local.project_suffix}"
  }
}
