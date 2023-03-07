# prod.tfvars

region              = "ap-southeast-1"
environment         = "prod"
kubernetes_version  = "1.25"
eks_ami_type        = "ami-02214cc392fb65503"
instance_type       = "t3.small"
bucket_prefix       = "devops-tf-eks"
cidr_block          = "10.0.0.0/16"
private_subnets     = ["10.0.21.0/24", "10.0.22.0/24", "10.0.23.0/24"]
public_subnets      = ["10.0.24.0/24", "10.0.25.0/24", "10.0.26.0/24"]

# to dep[loy in production use this command: 
#terraform init -backend-config="bucket=devops-tf-eks" -backend-config="key=prod/terraform.tfstate" -backend-config="region=us-west-2" eks-cluster/
#terraform apply -var-file="prod.tfvars" eks-cluster/
