# vpc/variables.tf

variable "region" {
  description = "The AWS region to deploy the VPC in."
  type        = string
}

variable "environment" {
  description = "The environment (dev, stage, prod) to deploy the VPC in."
  type        = string
}

variable "cidr_block" {
  description = "The CIDR block for the VPC."
  type        = string
}

variable "private_subnets" {
  description = "The list of private subnet CIDR blocks for the VPC."
  type        = list(string)
}

variable "public_subnets" {
  description = "The list of public subnet CIDR blocks for the VPC."
  type        = list(string)
}
