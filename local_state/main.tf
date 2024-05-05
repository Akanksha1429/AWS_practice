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

# Declare the AWS_AMI to be used for creating instance
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
}

 /* filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}*/

# Use the created AMI that will start a EC2 machine
resource "aws_instance" "example_server" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform_Demo"
  }
}

/* Create a VPC
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}*/