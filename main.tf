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
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    git_commit           = "525d0ff7b527f73a6053e7ed619f72d5b92e1bfc"
    git_file             = "main.tf"
    git_last_modified_at = "2023-01-31 20:30:25"
    git_last_modified_by = "pvondemhagen@yahoo.com"
    git_modifiers        = "pvondemhagen"
    git_org              = "pvondemhagen"
    git_repo             = "Terraform_AWS_Demo_1"
    yor_trace            = "481b8d17-0d8c-4702-a0d9-06d8a6bfe18f"
  }
}

resource "aws_instance" "Prisma_Cloud_demo_server" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name                 = "PrismaCloudDemoAppServerInstance"
    git_commit           = "525d0ff7b527f73a6053e7ed619f72d5b92e1bfc"
    git_file             = "main.tf"
    git_last_modified_at = "2023-01-31 20:30:25"
    git_last_modified_by = "pvondemhagen@yahoo.com"
    git_modifiers        = "pvondemhagen"
    git_org              = "pvondemhagen"
    git_repo             = "Terraform_AWS_Demo_1"
    yor_trace            = "f2858efd-bc1d-4eca-b6da-b53ada8beb90"
  }
}