# eks-cluster/outputs.tf

output "kubeconfig" {
  value = module.eks_cluster.kubeconfig
}

output "config_map_aws_auth" {
  value = module.eks_cluster.config_map_aws_auth
}
#The kubeconfig output exports the Kubernetes configuration file, which is used to access the EKS cluster from local machine