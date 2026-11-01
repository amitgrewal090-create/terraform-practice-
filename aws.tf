terraform {
required_providers {
aws = {
source  = "hashicorp/aws"
version = "~> 6.0"
}
}

backend "s3" {
bucket = "amit-terraform-state-2026-unique-3010"
key    = "terraform-practice/terraform.tfstate"
region = "eu-north-1"
}
}

provider "aws" {
region = "eu-north-1"
}