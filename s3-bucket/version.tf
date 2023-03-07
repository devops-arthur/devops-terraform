# s3-bucket/version.tf

terraform {
  required_providers {
    aws = ">= 3.45.0"
  }

  required_version = ">= 0.13.0"
}

provider "aws" {
    access_key = "${var.aws_access_key}"
    secret_key = "${var.aws_secret_key}"
    region = "${var.region}"
}