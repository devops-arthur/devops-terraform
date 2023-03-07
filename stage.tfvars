# stage.tfvars

region              = "eu-central-1"
environment         = "stage"
kubernetes_version  = "1.25"
eks_ami_type        = "ami-02214cc392fb65503"
instance_type       = "t3.small"
bucket_prefix       = "devops-tf-eks"
cidr_block          = "10.0.0.0/16"
private_subnets     = ["10.0.11.0/24", "10.0.12.0/24", "10.0.13.0/24"]
public_subnets      = ["10.0.14.0/24", "10.0.15.0/24", "10.0.16.0/24"]
