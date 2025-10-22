output "cluster_name" {
  description = "EKS Cluster Name"
  value       = aws_eks_cluster.wiz.name
}
