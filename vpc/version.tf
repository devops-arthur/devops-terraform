# vpc/version.tf

terraform {
  required_providers {
    aws = ">= 3.45.0"
  }

  required_version = ">= 0.13.0"
}

provider "aws" {
  region = var.region
}
