provider "aws" {
  region = "us-west-2"
}

resource "aws_vpc" "my_vpc" { # Changed 'resources' to 'resource'
  cidr_block = "10.0.0.0/24"  # Corrected the CIDR block
}

