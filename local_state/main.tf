# Describe the providers
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  required_version = ">= 1.2.0"
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Create instance
resource "aws_instance" "app_server" {
  ami = "ami-07caf09b362be10b8"
  instance_type  = "t2.micro"

   tags = {
    Name = "Terraform_Demo"
}
}
