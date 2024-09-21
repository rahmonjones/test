provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "my_vpc" {      # Changed 'resources' to 'resource'
  cidr_block = "10.0.0.0/24"       # Corrected the CIDR block
}

