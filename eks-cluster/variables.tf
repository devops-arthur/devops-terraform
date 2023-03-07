# eks-cluster/variables.tf
#the input variables for the eks-cluster module. These variables allow you to customize the configuration of the EKS cluster and worker nodes, as well as the networking and S3 bucket settings.
variable "region" {
  description = "The AWS region to deploy the EKS cluster in."
  type        = string
}

variable "environment" {
  description = "The environment (dev, stage, prod) to deploy the EKS cluster in."
  type        = string
}

variable "kubernetes_version" {
  description = "The version of Kubernetes to use for the EKS cluster."
  type        = string
}

variable "eks_ami_type" {
  description = "The EKS AMI type to use for the worker nodes."
  type        = string
}

variable "instance_type" {
  description = "The EC2 instance type to use for the worker nodes."
  type        = string
}

variable "bucket_prefix" {
  description = "The prefix to use for the S3 bucket name for storing Terraform state."
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
