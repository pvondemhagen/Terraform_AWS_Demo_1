terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region     = "us-west-2"
  access_key = "AKIASAEGSB3WTZXPINUW"
  secret_key = "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"
}

resource "aws_security_group" "Ec2_security1" {
  name        = "TerraformEc2_security1"
  description = "Allow TLS inbound traffic"
  vpc_id      = "vpc-0bbcc1b6d563924c3"
  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "Prisma_Cloud_demo_server" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name = "PrismaCloudDemoAppServerInstance"
  }
}