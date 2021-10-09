# Provider Configuration

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# terraform {
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "3.60.0"
#     }
#   }
# }

# aws provider config
provider "aws" {
  region = "af-south-1"
}