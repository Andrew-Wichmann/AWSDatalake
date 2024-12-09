provider "aws" {
    region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "awichmann-terraform"
    key    = "AWSDatalake/terraform.tfstate"
    region = "us-east-1"
    encrypt = true
  }
}

resource "aws_s3_bucket" "data-lake" {
    bucket = "awichmann-data-lake"
}
