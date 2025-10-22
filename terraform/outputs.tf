output "eks_cluster_name" {
  value = module.eks.cluster_name
}

output "ec2_instance_public_ip" {
  value = module.ec2_mongo.public_ip
}

output "s3_bucket_name" {
  value = module.s3_backup.bucket_name
}
