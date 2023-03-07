# dev.tfvars

region              = "us-east-1"
environment         = "dev"
kubernetes_version  = "1.25"
eks_ami_type        = "ami-02214cc392fb65503"
instance_type       = "t3.small"
bucket_prefix       = "devops-tf-eks"
cidr_block          = "10.0.0.0/16"
private_subnets     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
public_subnets      = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
