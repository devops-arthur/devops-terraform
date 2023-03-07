# eks-cluster/main.tf

provider "aws" {
  region = var.region

  environment = {
    AWS_REGION = var.region
    ENVIRONMENT = var.environment
  }
}

module "eks_cluster" {
  source = "terraform-aws-modules/eks/aws"

  cluster_name        = "my-eks-cluster-${var.environment}"
  subnets             = {
    private = var.private_subnets
    public  = var.public_subnets
  }
  vpc_cidr            = var.cidr_block
  tags                = {
    Terraform   = "true"
    Environment = var.environment
  }
  version             = "14.0.0"
  kubernetes_version = var.kubernetes_version
  ami_type            = var.eks_ami_type
  instance_type       = var.instance_type
  
  # Access the environment variables
  aws_region    = env.AWS_REGION
  environment   = env.ENVIRONMENT
}


