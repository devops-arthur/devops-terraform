# main.tf

module "vpc" {
  source = "./vpc"

  region          = var.region
  environment     = var.environment
  cidr_block      = var.cidr_block
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets
}

module "s3-bucket" {
  source = "./s3-bucket"

  region        = var.region
  environment   = var.environment
  bucket_prefix = var.bucket_prefix
  bucket_name   = "devops-tf-state-20230307"
}

module "eks-cluster" {
  source = "./eks-cluster"

  region              = var.region
  environment         = var.environment
  kubernetes_version  = var.kubernetes_version
  eks_ami_type        = var.eks_ami_type
  instance_type       = var.instance_type
  vpc_id              = module.vpc.vpc_id
  public_subnet_ids   = module.vpc.public_subnets
  private_subnet_ids  = module.vpc.private_subnets
  kubeconfig_output_path = "../kubeconfig/${var.environment}.kubeconfig"
}

#The vpc module creates the VPC and its associated subnets and resources. 
#The s3-bucket module creates the S3 bucket for Terraform state storage. The eks-cluster module creates the EKS cluster and its associated resources, including worker nodes in the private subnets.
#Each module is instantiated with its own input variables, which are defined in .tfvars files for each environment.