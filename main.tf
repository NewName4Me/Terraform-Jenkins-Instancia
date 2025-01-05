terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.31.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      Application = "Web EC2 S3"
      Owner       = "Erik Tortajada"
    }
  }
}

  resource "aws_vpc" "vpc" {
    cidr_block           = "10.0.0.0/16"
    instance_tenancy     = "default"
    enable_dns_hostnames = true

    tags = {
      Name = "custom_vpc"
    }
  }
