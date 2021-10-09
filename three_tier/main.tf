# Provider Configuration
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# aws provider config
provider "aws" {
  region = "af-south-1"
}

# ssh-keypair
resource "aws_key_pair" "terraform-keys2" {
  key_name = "terraform-keys2"
  public_key = "terraform-keys2.pub"
}