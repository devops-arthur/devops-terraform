# Terraform EKS Cluster Deployment

This Terraform code deploys an EKS cluster in three regions (us-east-1, eu-central-1, and ap-southeast-1) across three different environments (dev, stage, prod). The code uses modules for the VPC, S3 bucket, and EKS cluster resources.

## Prerequisites

To use this Terraform code, you'll need:

- An AWS account
- Terraform 0.13 or later installed on your local machine
- AWS CLI configured with your AWS access and secret keys
- Basic knowledge of AWS and Terraform

## Usage

1. Clone this repository to your local machine.
2. Create a `dev.tfvars`, `stage.tfvars`, and `prod.tfvars` file for each environment, using the examples provided in this repository as a starting point. Be sure to modify the input variables as needed to match your requirements.
3. Run `terraform init` in each module directory (`vpc/`, `s3-bucket/`, `eks-cluster/`) to initialize the backend and provider configuration.
4. Run `terraform plan -var-file=dev.tfvars eks-cluster/` to preview the changes to be made for the dev environment. Repeat for the `stage` and `prod` environments.
5. Run `terraform apply -var-file=dev.tfvars eks-cluster/` to apply the changes for the dev environment. Repeat for the `stage` and `prod` environments.

## Modules

This Terraform code uses the following modules:

- `vpc`: creates the VPC and its associated subnets and resources.
- `s3-bucket`: creates the S3 bucket for Terraform state storage.
- `eks-cluster`: creates the EKS cluster and its associated resources, including worker nodes in the private subnets.

## Variables

The following input variables can be customized for each environment:

- `region`: the AWS region to deploy the infrastructure in.
- `environment`: the environment (dev, stage, prod) to deploy the infrastructure in.
- `kubernetes_version`: the version of Kubernetes to use for the EKS cluster.
- `eks_ami_type`: the type of EKS AMI to use for the worker nodes.
- `instance_type`: the instance type to use for the worker nodes.
- `bucket_prefix`: the prefix to use for the S3 bucket name.
- `cidr_block`: the CIDR block for the VPC.
- `private_subnets`: the list of private subnet CIDR blocks for the VPC.
- `public_subnets`: the list of public subnet CIDR blocks for the VPC.

## Outputs

The following output variables are exported by this Terraform code:

- `kubeconfig`: the generated kubeconfig file for the EKS cluster.

## Notes

- The worker nodes are launched in the private subnets, so they cannot be accessed directly from the internet. You'll need to use the Kubernetes API or other tools to manage the nodes and deploy applications.
- This code provides a basic EKS cluster deployment that is suitable for development and testing environments. For production environments, you'll need to customize the configuration and resources to match your requirements.
- It's recommended to enable VPC flow logs and other security best practices to secure your EKS cluster and the resources deployed with it.
